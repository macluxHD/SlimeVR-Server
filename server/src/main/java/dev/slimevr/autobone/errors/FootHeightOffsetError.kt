package dev.slimevr.autobone.errors

import com.jme3.math.FastMath
import dev.slimevr.autobone.AutoBoneTrainingStep
import dev.slimevr.tracking.processor.skeleton.HumanSkeleton
import dev.slimevr.tracking.trackers.ComputedTracker
import dev.slimevr.tracking.trackers.TrackerRole

// The offset between the height both feet at one instant and over time
class FootHeightOffsetError : IAutoBoneError {
	@Throws(AutoBoneException::class)
	override fun getStepError(trainingStep: AutoBoneTrainingStep): Float {
		return getSlideError(
			trainingStep.humanPoseManager1.skeleton,
			trainingStep.humanPoseManager2.skeleton
		)
	}

	companion object {
		fun getSlideError(skeleton1: HumanSkeleton, skeleton2: HumanSkeleton): Float {
			val leftTracker1: ComputedTracker = skeleton1.getComputedTracker(TrackerRole.LEFT_FOOT)
			val rightTracker1: ComputedTracker = skeleton1.getComputedTracker(TrackerRole.RIGHT_FOOT)
			val leftTracker2: ComputedTracker = skeleton2.getComputedTracker(TrackerRole.LEFT_FOOT)
			val rightTracker2: ComputedTracker = skeleton2.getComputedTracker(TrackerRole.RIGHT_FOOT)
			return getFootHeightError(leftTracker1, rightTracker1, leftTracker2, rightTracker2)
		}

		fun getFootHeightError(
			leftTracker1: ComputedTracker,
			rightTracker1: ComputedTracker,
			leftTracker2: ComputedTracker,
			rightTracker2: ComputedTracker,
		): Float {
			val leftFoot1 = leftTracker1.position.y
			val rightFoot1 = rightTracker1.position.y
			val leftFoot2 = leftTracker2.position.y
			val rightFoot2 = rightTracker2.position.y

			// Compute all combinations of heights
			val dist1 = FastMath.abs(leftFoot1 - rightFoot1)
			val dist2 = FastMath.abs(leftFoot1 - leftFoot2)
			val dist3 = FastMath.abs(leftFoot1 - rightFoot2)
			val dist4 = FastMath.abs(rightFoot1 - leftFoot2)
			val dist5 = FastMath.abs(rightFoot1 - rightFoot2)
			val dist6 = FastMath.abs(leftFoot2 - rightFoot2)

			// Divide by 12 (6 values * 2 to halve) to halve and average, it's
			// halved because you want to approach a midpoint, not the other point
			return (dist1 + dist2 + dist3 + dist4 + dist5 + dist6) / 12f
		}
	}
}
