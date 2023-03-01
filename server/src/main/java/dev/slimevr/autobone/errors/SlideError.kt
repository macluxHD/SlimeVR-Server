package dev.slimevr.autobone.errors

import dev.slimevr.autobone.AutoBoneTrainingStep
import dev.slimevr.tracking.processor.skeleton.HumanSkeleton
import dev.slimevr.tracking.trackers.ComputedTracker
import dev.slimevr.tracking.trackers.TrackerRole

// The change in position of the ankle over time
class SlideError : IAutoBoneError {
	@Throws(AutoBoneException::class)
	override fun getStepError(trainingStep: AutoBoneTrainingStep): Float {
		return getSlideError(
			trainingStep.humanPoseManager1.skeleton,
			trainingStep.humanPoseManager2.skeleton
		)
	}

	companion object {
		fun getSlideError(skeleton1: HumanSkeleton, skeleton2: HumanSkeleton): Float {
			// Calculate and average between both feet
			return (
				getSlideError(skeleton1, skeleton2, TrackerRole.LEFT_FOOT) +
					getSlideError(skeleton1, skeleton2, TrackerRole.RIGHT_FOOT)
				) / 2f
		}

		fun getSlideError(
			skeleton1: HumanSkeleton,
			skeleton2: HumanSkeleton,
			trackerRole: TrackerRole,
		): Float {
			// Calculate and average between both feet
			return getSlideError(
				skeleton1.getComputedTracker(trackerRole),
				skeleton2.getComputedTracker(trackerRole)
			)
		}

		fun getSlideError(tracker1: ComputedTracker, tracker2: ComputedTracker): Float {
			// Return the midpoint distance
			return tracker1.position.distance(tracker2.position) / 2f
		}
	}
}
