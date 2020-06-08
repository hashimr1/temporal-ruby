# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: event/message.proto

require 'google/protobuf'

require 'event/enum_pb'
require 'common/enum_pb'
require 'common/message_pb'
require 'failure/message_pb'
require 'execution/message_pb'
require 'tasklist/message_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("event/message.proto", :syntax => :proto3) do
    add_message "event.WorkflowExecutionStartedEventAttributes" do
      optional :workflowType, :message, 1, "common.WorkflowType"
      optional :parentWorkflowNamespace, :string, 2
      optional :parentWorkflowExecution, :message, 3, "common.WorkflowExecution"
      optional :parentInitiatedEventId, :int64, 4
      optional :taskList, :message, 5, "tasklist.TaskList"
      optional :input, :message, 6, "common.Payloads"
      optional :workflowExecutionTimeoutSeconds, :int32, 7
      optional :workflowRunTimeoutSeconds, :int32, 8
      optional :workflowTaskTimeoutSeconds, :int32, 9
      optional :continuedExecutionRunId, :string, 10
      optional :initiator, :enum, 11, "common.ContinueAsNewInitiator"
      optional :continuedFailure, :message, 12, "failure.Failure"
      optional :lastCompletionResult, :message, 13, "common.Payloads"
      optional :originalExecutionRunId, :string, 14
      optional :identity, :string, 15
      optional :firstExecutionRunId, :string, 16
      optional :retryPolicy, :message, 17, "common.RetryPolicy"
      optional :attempt, :int32, 18
      optional :workflowExecutionExpirationTimestamp, :int64, 19
      optional :cronSchedule, :string, 20
      optional :firstDecisionTaskBackoffSeconds, :int32, 21
      optional :memo, :message, 22, "common.Memo"
      optional :searchAttributes, :message, 23, "common.SearchAttributes"
      optional :prevAutoResetPoints, :message, 24, "execution.ResetPoints"
      optional :header, :message, 25, "common.Header"
    end
    add_message "event.WorkflowExecutionCompletedEventAttributes" do
      optional :result, :message, 1, "common.Payloads"
      optional :decisionTaskCompletedEventId, :int64, 2
    end
    add_message "event.WorkflowExecutionFailedEventAttributes" do
      optional :failure, :message, 1, "failure.Failure"
      optional :retryStatus, :enum, 2, "common.RetryStatus"
      optional :decisionTaskCompletedEventId, :int64, 3
    end
    add_message "event.WorkflowExecutionTimedOutEventAttributes" do
      optional :retryStatus, :enum, 1, "common.RetryStatus"
    end
    add_message "event.WorkflowExecutionContinuedAsNewEventAttributes" do
      optional :newExecutionRunId, :string, 1
      optional :workflowType, :message, 2, "common.WorkflowType"
      optional :taskList, :message, 3, "tasklist.TaskList"
      optional :input, :message, 4, "common.Payloads"
      optional :workflowRunTimeoutSeconds, :int32, 5
      optional :workflowTaskTimeoutSeconds, :int32, 6
      optional :decisionTaskCompletedEventId, :int64, 7
      optional :backoffStartIntervalInSeconds, :int32, 8
      optional :initiator, :enum, 9, "common.ContinueAsNewInitiator"
      optional :failure, :message, 10, "failure.Failure"
      optional :lastCompletionResult, :message, 11, "common.Payloads"
      optional :header, :message, 12, "common.Header"
      optional :memo, :message, 13, "common.Memo"
      optional :searchAttributes, :message, 14, "common.SearchAttributes"
    end
    add_message "event.DecisionTaskScheduledEventAttributes" do
      optional :taskList, :message, 1, "tasklist.TaskList"
      optional :startToCloseTimeoutSeconds, :int32, 2
      optional :attempt, :int64, 3
    end
    add_message "event.DecisionTaskStartedEventAttributes" do
      optional :scheduledEventId, :int64, 1
      optional :identity, :string, 2
      optional :requestId, :string, 3
    end
    add_message "event.DecisionTaskCompletedEventAttributes" do
      optional :scheduledEventId, :int64, 1
      optional :startedEventId, :int64, 2
      optional :identity, :string, 3
      optional :binaryChecksum, :string, 4
    end
    add_message "event.DecisionTaskTimedOutEventAttributes" do
      optional :scheduledEventId, :int64, 1
      optional :startedEventId, :int64, 2
      optional :timeoutType, :enum, 3, "common.TimeoutType"
    end
    add_message "event.DecisionTaskFailedEventAttributes" do
      optional :scheduledEventId, :int64, 1
      optional :startedEventId, :int64, 2
      optional :cause, :enum, 3, "event.DecisionTaskFailedCause"
      optional :failure, :message, 4, "failure.Failure"
      optional :identity, :string, 5
      optional :baseRunId, :string, 6
      optional :newRunId, :string, 7
      optional :forkEventVersion, :int64, 8
      optional :binaryChecksum, :string, 9
    end
    add_message "event.ActivityTaskScheduledEventAttributes" do
      optional :activityId, :string, 1
      optional :activityType, :message, 2, "common.ActivityType"
      optional :namespace, :string, 3
      optional :taskList, :message, 4, "tasklist.TaskList"
      optional :header, :message, 5, "common.Header"
      optional :input, :message, 6, "common.Payloads"
      optional :scheduleToCloseTimeoutSeconds, :int32, 7
      optional :scheduleToStartTimeoutSeconds, :int32, 8
      optional :startToCloseTimeoutSeconds, :int32, 9
      optional :heartbeatTimeoutSeconds, :int32, 10
      optional :decisionTaskCompletedEventId, :int64, 11
      optional :retryPolicy, :message, 12, "common.RetryPolicy"
    end
    add_message "event.ActivityTaskStartedEventAttributes" do
      optional :scheduledEventId, :int64, 1
      optional :identity, :string, 2
      optional :requestId, :string, 3
      optional :attempt, :int32, 4
      optional :lastFailure, :message, 5, "failure.Failure"
    end
    add_message "event.ActivityTaskCompletedEventAttributes" do
      optional :result, :message, 1, "common.Payloads"
      optional :scheduledEventId, :int64, 2
      optional :startedEventId, :int64, 3
      optional :identity, :string, 4
    end
    add_message "event.ActivityTaskFailedEventAttributes" do
      optional :failure, :message, 1, "failure.Failure"
      optional :scheduledEventId, :int64, 2
      optional :startedEventId, :int64, 3
      optional :identity, :string, 4
      optional :retryStatus, :enum, 5, "common.RetryStatus"
    end
    add_message "event.ActivityTaskTimedOutEventAttributes" do
      optional :failure, :message, 1, "failure.Failure"
      optional :scheduledEventId, :int64, 2
      optional :startedEventId, :int64, 3
      optional :retryStatus, :enum, 4, "common.RetryStatus"
    end
    add_message "event.ActivityTaskCancelRequestedEventAttributes" do
      optional :scheduledEventId, :int64, 1
      optional :decisionTaskCompletedEventId, :int64, 2
    end
    add_message "event.ActivityTaskCanceledEventAttributes" do
      optional :details, :message, 1, "common.Payloads"
      optional :latestCancelRequestedEventId, :int64, 2
      optional :scheduledEventId, :int64, 3
      optional :startedEventId, :int64, 4
      optional :identity, :string, 5
    end
    add_message "event.TimerStartedEventAttributes" do
      optional :timerId, :string, 1
      optional :startToFireTimeoutSeconds, :int64, 2
      optional :decisionTaskCompletedEventId, :int64, 3
    end
    add_message "event.TimerFiredEventAttributes" do
      optional :timerId, :string, 1
      optional :startedEventId, :int64, 2
    end
    add_message "event.TimerCanceledEventAttributes" do
      optional :timerId, :string, 1
      optional :startedEventId, :int64, 2
      optional :decisionTaskCompletedEventId, :int64, 3
      optional :identity, :string, 4
    end
    add_message "event.CancelTimerFailedEventAttributes" do
      optional :timerId, :string, 1
      optional :cause, :string, 2
      optional :decisionTaskCompletedEventId, :int64, 3
      optional :identity, :string, 4
    end
    add_message "event.WorkflowExecutionCancelRequestedEventAttributes" do
      optional :cause, :string, 1
      optional :externalInitiatedEventId, :int64, 2
      optional :externalWorkflowExecution, :message, 3, "common.WorkflowExecution"
      optional :identity, :string, 4
    end
    add_message "event.WorkflowExecutionCanceledEventAttributes" do
      optional :decisionTaskCompletedEventId, :int64, 1
      optional :details, :message, 2, "common.Payloads"
    end
    add_message "event.MarkerRecordedEventAttributes" do
      optional :markerName, :string, 1
      map :details, :string, :message, 2, "common.Payloads"
      optional :decisionTaskCompletedEventId, :int64, 3
      optional :header, :message, 4, "common.Header"
      optional :failure, :message, 5, "failure.Failure"
    end
    add_message "event.WorkflowExecutionSignaledEventAttributes" do
      optional :signalName, :string, 1
      optional :input, :message, 2, "common.Payloads"
      optional :identity, :string, 3
    end
    add_message "event.WorkflowExecutionTerminatedEventAttributes" do
      optional :reason, :string, 1
      optional :details, :message, 2, "common.Payloads"
      optional :identity, :string, 3
    end
    add_message "event.RequestCancelExternalWorkflowExecutionInitiatedEventAttributes" do
      optional :decisionTaskCompletedEventId, :int64, 1
      optional :namespace, :string, 2
      optional :workflowExecution, :message, 3, "common.WorkflowExecution"
      optional :control, :string, 4
      optional :childWorkflowOnly, :bool, 5
    end
    add_message "event.RequestCancelExternalWorkflowExecutionFailedEventAttributes" do
      optional :cause, :enum, 1, "event.CancelExternalWorkflowExecutionFailedCause"
      optional :decisionTaskCompletedEventId, :int64, 2
      optional :namespace, :string, 3
      optional :workflowExecution, :message, 4, "common.WorkflowExecution"
      optional :initiatedEventId, :int64, 5
      optional :control, :string, 6
    end
    add_message "event.ExternalWorkflowExecutionCancelRequestedEventAttributes" do
      optional :initiatedEventId, :int64, 1
      optional :namespace, :string, 2
      optional :workflowExecution, :message, 3, "common.WorkflowExecution"
    end
    add_message "event.SignalExternalWorkflowExecutionInitiatedEventAttributes" do
      optional :decisionTaskCompletedEventId, :int64, 1
      optional :namespace, :string, 2
      optional :workflowExecution, :message, 3, "common.WorkflowExecution"
      optional :signalName, :string, 4
      optional :input, :message, 5, "common.Payloads"
      optional :control, :string, 6
      optional :childWorkflowOnly, :bool, 7
    end
    add_message "event.SignalExternalWorkflowExecutionFailedEventAttributes" do
      optional :cause, :enum, 1, "event.SignalExternalWorkflowExecutionFailedCause"
      optional :decisionTaskCompletedEventId, :int64, 2
      optional :namespace, :string, 3
      optional :workflowExecution, :message, 4, "common.WorkflowExecution"
      optional :initiatedEventId, :int64, 5
      optional :control, :string, 6
    end
    add_message "event.ExternalWorkflowExecutionSignaledEventAttributes" do
      optional :initiatedEventId, :int64, 1
      optional :namespace, :string, 2
      optional :workflowExecution, :message, 3, "common.WorkflowExecution"
      optional :control, :string, 4
    end
    add_message "event.UpsertWorkflowSearchAttributesEventAttributes" do
      optional :decisionTaskCompletedEventId, :int64, 1
      optional :searchAttributes, :message, 2, "common.SearchAttributes"
    end
    add_message "event.StartChildWorkflowExecutionInitiatedEventAttributes" do
      optional :namespace, :string, 1
      optional :workflowId, :string, 2
      optional :workflowType, :message, 3, "common.WorkflowType"
      optional :taskList, :message, 4, "tasklist.TaskList"
      optional :input, :message, 5, "common.Payloads"
      optional :workflowExecutionTimeoutSeconds, :int32, 6
      optional :workflowRunTimeoutSeconds, :int32, 7
      optional :workflowTaskTimeoutSeconds, :int32, 8
      optional :parentClosePolicy, :enum, 9, "common.ParentClosePolicy"
      optional :control, :string, 10
      optional :decisionTaskCompletedEventId, :int64, 11
      optional :workflowIdReusePolicy, :enum, 12, "common.WorkflowIdReusePolicy"
      optional :retryPolicy, :message, 13, "common.RetryPolicy"
      optional :cronSchedule, :string, 14
      optional :header, :message, 15, "common.Header"
      optional :memo, :message, 16, "common.Memo"
      optional :searchAttributes, :message, 17, "common.SearchAttributes"
    end
    add_message "event.StartChildWorkflowExecutionFailedEventAttributes" do
      optional :namespace, :string, 1
      optional :workflowId, :string, 2
      optional :workflowType, :message, 3, "common.WorkflowType"
      optional :cause, :enum, 4, "event.StartChildWorkflowExecutionFailedCause"
      optional :control, :string, 5
      optional :initiatedEventId, :int64, 6
      optional :decisionTaskCompletedEventId, :int64, 7
    end
    add_message "event.ChildWorkflowExecutionStartedEventAttributes" do
      optional :namespace, :string, 1
      optional :initiatedEventId, :int64, 2
      optional :workflowExecution, :message, 3, "common.WorkflowExecution"
      optional :workflowType, :message, 4, "common.WorkflowType"
      optional :header, :message, 5, "common.Header"
    end
    add_message "event.ChildWorkflowExecutionCompletedEventAttributes" do
      optional :result, :message, 1, "common.Payloads"
      optional :namespace, :string, 2
      optional :workflowExecution, :message, 3, "common.WorkflowExecution"
      optional :workflowType, :message, 4, "common.WorkflowType"
      optional :initiatedEventId, :int64, 5
      optional :startedEventId, :int64, 6
    end
    add_message "event.ChildWorkflowExecutionFailedEventAttributes" do
      optional :failure, :message, 1, "failure.Failure"
      optional :namespace, :string, 2
      optional :workflowExecution, :message, 3, "common.WorkflowExecution"
      optional :workflowType, :message, 4, "common.WorkflowType"
      optional :initiatedEventId, :int64, 5
      optional :startedEventId, :int64, 6
      optional :retryStatus, :enum, 7, "common.RetryStatus"
    end
    add_message "event.ChildWorkflowExecutionCanceledEventAttributes" do
      optional :details, :message, 1, "common.Payloads"
      optional :namespace, :string, 2
      optional :workflowExecution, :message, 3, "common.WorkflowExecution"
      optional :workflowType, :message, 4, "common.WorkflowType"
      optional :initiatedEventId, :int64, 5
      optional :startedEventId, :int64, 6
    end
    add_message "event.ChildWorkflowExecutionTimedOutEventAttributes" do
      optional :namespace, :string, 1
      optional :workflowExecution, :message, 2, "common.WorkflowExecution"
      optional :workflowType, :message, 3, "common.WorkflowType"
      optional :initiatedEventId, :int64, 4
      optional :startedEventId, :int64, 5
      optional :retryStatus, :enum, 6, "common.RetryStatus"
    end
    add_message "event.ChildWorkflowExecutionTerminatedEventAttributes" do
      optional :namespace, :string, 1
      optional :workflowExecution, :message, 2, "common.WorkflowExecution"
      optional :workflowType, :message, 3, "common.WorkflowType"
      optional :initiatedEventId, :int64, 4
      optional :startedEventId, :int64, 5
    end
    add_message "event.HistoryEvent" do
      optional :eventId, :int64, 1
      optional :timestamp, :int64, 2
      optional :eventType, :enum, 3, "event.EventType"
      optional :version, :int64, 4
      optional :taskId, :int64, 5
      oneof :attributes do
        optional :workflowExecutionStartedEventAttributes, :message, 6, "event.WorkflowExecutionStartedEventAttributes"
        optional :workflowExecutionCompletedEventAttributes, :message, 7, "event.WorkflowExecutionCompletedEventAttributes"
        optional :workflowExecutionFailedEventAttributes, :message, 8, "event.WorkflowExecutionFailedEventAttributes"
        optional :workflowExecutionTimedOutEventAttributes, :message, 9, "event.WorkflowExecutionTimedOutEventAttributes"
        optional :decisionTaskScheduledEventAttributes, :message, 10, "event.DecisionTaskScheduledEventAttributes"
        optional :decisionTaskStartedEventAttributes, :message, 11, "event.DecisionTaskStartedEventAttributes"
        optional :decisionTaskCompletedEventAttributes, :message, 12, "event.DecisionTaskCompletedEventAttributes"
        optional :decisionTaskTimedOutEventAttributes, :message, 13, "event.DecisionTaskTimedOutEventAttributes"
        optional :decisionTaskFailedEventAttributes, :message, 14, "event.DecisionTaskFailedEventAttributes"
        optional :activityTaskScheduledEventAttributes, :message, 15, "event.ActivityTaskScheduledEventAttributes"
        optional :activityTaskStartedEventAttributes, :message, 16, "event.ActivityTaskStartedEventAttributes"
        optional :activityTaskCompletedEventAttributes, :message, 17, "event.ActivityTaskCompletedEventAttributes"
        optional :activityTaskFailedEventAttributes, :message, 18, "event.ActivityTaskFailedEventAttributes"
        optional :activityTaskTimedOutEventAttributes, :message, 19, "event.ActivityTaskTimedOutEventAttributes"
        optional :timerStartedEventAttributes, :message, 20, "event.TimerStartedEventAttributes"
        optional :timerFiredEventAttributes, :message, 21, "event.TimerFiredEventAttributes"
        optional :activityTaskCancelRequestedEventAttributes, :message, 22, "event.ActivityTaskCancelRequestedEventAttributes"
        optional :activityTaskCanceledEventAttributes, :message, 23, "event.ActivityTaskCanceledEventAttributes"
        optional :timerCanceledEventAttributes, :message, 24, "event.TimerCanceledEventAttributes"
        optional :cancelTimerFailedEventAttributes, :message, 25, "event.CancelTimerFailedEventAttributes"
        optional :markerRecordedEventAttributes, :message, 26, "event.MarkerRecordedEventAttributes"
        optional :workflowExecutionSignaledEventAttributes, :message, 27, "event.WorkflowExecutionSignaledEventAttributes"
        optional :workflowExecutionTerminatedEventAttributes, :message, 28, "event.WorkflowExecutionTerminatedEventAttributes"
        optional :workflowExecutionCancelRequestedEventAttributes, :message, 29, "event.WorkflowExecutionCancelRequestedEventAttributes"
        optional :workflowExecutionCanceledEventAttributes, :message, 30, "event.WorkflowExecutionCanceledEventAttributes"
        optional :requestCancelExternalWorkflowExecutionInitiatedEventAttributes, :message, 31, "event.RequestCancelExternalWorkflowExecutionInitiatedEventAttributes"
        optional :requestCancelExternalWorkflowExecutionFailedEventAttributes, :message, 32, "event.RequestCancelExternalWorkflowExecutionFailedEventAttributes"
        optional :externalWorkflowExecutionCancelRequestedEventAttributes, :message, 33, "event.ExternalWorkflowExecutionCancelRequestedEventAttributes"
        optional :workflowExecutionContinuedAsNewEventAttributes, :message, 34, "event.WorkflowExecutionContinuedAsNewEventAttributes"
        optional :startChildWorkflowExecutionInitiatedEventAttributes, :message, 35, "event.StartChildWorkflowExecutionInitiatedEventAttributes"
        optional :startChildWorkflowExecutionFailedEventAttributes, :message, 36, "event.StartChildWorkflowExecutionFailedEventAttributes"
        optional :childWorkflowExecutionStartedEventAttributes, :message, 37, "event.ChildWorkflowExecutionStartedEventAttributes"
        optional :childWorkflowExecutionCompletedEventAttributes, :message, 38, "event.ChildWorkflowExecutionCompletedEventAttributes"
        optional :childWorkflowExecutionFailedEventAttributes, :message, 39, "event.ChildWorkflowExecutionFailedEventAttributes"
        optional :childWorkflowExecutionCanceledEventAttributes, :message, 40, "event.ChildWorkflowExecutionCanceledEventAttributes"
        optional :childWorkflowExecutionTimedOutEventAttributes, :message, 41, "event.ChildWorkflowExecutionTimedOutEventAttributes"
        optional :childWorkflowExecutionTerminatedEventAttributes, :message, 42, "event.ChildWorkflowExecutionTerminatedEventAttributes"
        optional :signalExternalWorkflowExecutionInitiatedEventAttributes, :message, 43, "event.SignalExternalWorkflowExecutionInitiatedEventAttributes"
        optional :signalExternalWorkflowExecutionFailedEventAttributes, :message, 44, "event.SignalExternalWorkflowExecutionFailedEventAttributes"
        optional :externalWorkflowExecutionSignaledEventAttributes, :message, 45, "event.ExternalWorkflowExecutionSignaledEventAttributes"
        optional :upsertWorkflowSearchAttributesEventAttributes, :message, 46, "event.UpsertWorkflowSearchAttributesEventAttributes"
      end
    end
    add_message "event.History" do
      repeated :events, :message, 1, "event.HistoryEvent"
    end
  end
end

module Temporal
  module Proto
    WorkflowExecutionStartedEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.WorkflowExecutionStartedEventAttributes").msgclass
    WorkflowExecutionCompletedEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.WorkflowExecutionCompletedEventAttributes").msgclass
    WorkflowExecutionFailedEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.WorkflowExecutionFailedEventAttributes").msgclass
    WorkflowExecutionTimedOutEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.WorkflowExecutionTimedOutEventAttributes").msgclass
    WorkflowExecutionContinuedAsNewEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.WorkflowExecutionContinuedAsNewEventAttributes").msgclass
    DecisionTaskScheduledEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.DecisionTaskScheduledEventAttributes").msgclass
    DecisionTaskStartedEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.DecisionTaskStartedEventAttributes").msgclass
    DecisionTaskCompletedEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.DecisionTaskCompletedEventAttributes").msgclass
    DecisionTaskTimedOutEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.DecisionTaskTimedOutEventAttributes").msgclass
    DecisionTaskFailedEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.DecisionTaskFailedEventAttributes").msgclass
    ActivityTaskScheduledEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.ActivityTaskScheduledEventAttributes").msgclass
    ActivityTaskStartedEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.ActivityTaskStartedEventAttributes").msgclass
    ActivityTaskCompletedEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.ActivityTaskCompletedEventAttributes").msgclass
    ActivityTaskFailedEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.ActivityTaskFailedEventAttributes").msgclass
    ActivityTaskTimedOutEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.ActivityTaskTimedOutEventAttributes").msgclass
    ActivityTaskCancelRequestedEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.ActivityTaskCancelRequestedEventAttributes").msgclass
    ActivityTaskCanceledEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.ActivityTaskCanceledEventAttributes").msgclass
    TimerStartedEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.TimerStartedEventAttributes").msgclass
    TimerFiredEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.TimerFiredEventAttributes").msgclass
    TimerCanceledEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.TimerCanceledEventAttributes").msgclass
    CancelTimerFailedEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.CancelTimerFailedEventAttributes").msgclass
    WorkflowExecutionCancelRequestedEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.WorkflowExecutionCancelRequestedEventAttributes").msgclass
    WorkflowExecutionCanceledEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.WorkflowExecutionCanceledEventAttributes").msgclass
    MarkerRecordedEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.MarkerRecordedEventAttributes").msgclass
    WorkflowExecutionSignaledEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.WorkflowExecutionSignaledEventAttributes").msgclass
    WorkflowExecutionTerminatedEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.WorkflowExecutionTerminatedEventAttributes").msgclass
    RequestCancelExternalWorkflowExecutionInitiatedEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.RequestCancelExternalWorkflowExecutionInitiatedEventAttributes").msgclass
    RequestCancelExternalWorkflowExecutionFailedEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.RequestCancelExternalWorkflowExecutionFailedEventAttributes").msgclass
    ExternalWorkflowExecutionCancelRequestedEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.ExternalWorkflowExecutionCancelRequestedEventAttributes").msgclass
    SignalExternalWorkflowExecutionInitiatedEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.SignalExternalWorkflowExecutionInitiatedEventAttributes").msgclass
    SignalExternalWorkflowExecutionFailedEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.SignalExternalWorkflowExecutionFailedEventAttributes").msgclass
    ExternalWorkflowExecutionSignaledEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.ExternalWorkflowExecutionSignaledEventAttributes").msgclass
    UpsertWorkflowSearchAttributesEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.UpsertWorkflowSearchAttributesEventAttributes").msgclass
    StartChildWorkflowExecutionInitiatedEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.StartChildWorkflowExecutionInitiatedEventAttributes").msgclass
    StartChildWorkflowExecutionFailedEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.StartChildWorkflowExecutionFailedEventAttributes").msgclass
    ChildWorkflowExecutionStartedEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.ChildWorkflowExecutionStartedEventAttributes").msgclass
    ChildWorkflowExecutionCompletedEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.ChildWorkflowExecutionCompletedEventAttributes").msgclass
    ChildWorkflowExecutionFailedEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.ChildWorkflowExecutionFailedEventAttributes").msgclass
    ChildWorkflowExecutionCanceledEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.ChildWorkflowExecutionCanceledEventAttributes").msgclass
    ChildWorkflowExecutionTimedOutEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.ChildWorkflowExecutionTimedOutEventAttributes").msgclass
    ChildWorkflowExecutionTerminatedEventAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.ChildWorkflowExecutionTerminatedEventAttributes").msgclass
    HistoryEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.HistoryEvent").msgclass
    History = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("event.History").msgclass
  end
end
