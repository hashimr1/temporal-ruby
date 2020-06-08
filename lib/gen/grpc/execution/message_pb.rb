# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: execution/message.proto

require 'google/protobuf'

require 'execution/enum_pb'
require 'common/enum_pb'
require 'common/message_pb'
require 'failure/message_pb'
require 'tasklist/message_pb'
require 'google/protobuf/wrappers_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("execution/message.proto", :syntax => :proto3) do
    add_message "execution.WorkflowExecutionInfo" do
      optional :execution, :message, 1, "common.WorkflowExecution"
      optional :type, :message, 2, "common.WorkflowType"
      optional :startTime, :message, 3, "google.protobuf.Int64Value"
      optional :closeTime, :message, 4, "google.protobuf.Int64Value"
      optional :status, :enum, 5, "execution.WorkflowExecutionStatus"
      optional :historyLength, :int64, 6
      optional :parentNamespaceId, :string, 7
      optional :parentExecution, :message, 8, "common.WorkflowExecution"
      optional :executionTime, :int64, 9
      optional :memo, :message, 10, "common.Memo"
      optional :searchAttributes, :message, 11, "common.SearchAttributes"
      optional :autoResetPoints, :message, 12, "execution.ResetPoints"
      optional :taskList, :string, 13
    end
    add_message "execution.WorkflowExecutionConfiguration" do
      optional :taskList, :message, 1, "tasklist.TaskList"
      optional :workflowExecutionTimeoutSeconds, :int32, 2
      optional :workflowRunTimeoutSeconds, :int32, 3
      optional :workflowTaskTimeoutSeconds, :int32, 4
    end
    add_message "execution.PendingActivityInfo" do
      optional :activityId, :string, 1
      optional :activityType, :message, 2, "common.ActivityType"
      optional :state, :enum, 3, "execution.PendingActivityState"
      optional :heartbeatDetails, :message, 4, "common.Payloads"
      optional :lastHeartbeatTimestamp, :int64, 5
      optional :lastStartedTimestamp, :int64, 6
      optional :attempt, :int32, 7
      optional :maximumAttempts, :int32, 8
      optional :scheduledTimestamp, :int64, 9
      optional :expirationTimestamp, :int64, 10
      optional :lastFailure, :message, 11, "failure.Failure"
      optional :lastWorkerIdentity, :string, 12
    end
    add_message "execution.PendingChildExecutionInfo" do
      optional :workflowId, :string, 1
      optional :runId, :string, 2
      optional :workflowTypName, :string, 3
      optional :initiatedId, :int64, 4
      optional :parentClosePolicy, :enum, 5, "common.ParentClosePolicy"
    end
    add_message "execution.ResetPoints" do
      repeated :points, :message, 1, "execution.ResetPointInfo"
    end
    add_message "execution.ResetPointInfo" do
      optional :binaryChecksum, :string, 1
      optional :runId, :string, 2
      optional :firstDecisionCompletedId, :int64, 3
      optional :createdTimeNano, :int64, 4
      optional :expiringTimeNano, :int64, 5
      optional :resettable, :bool, 6
    end
  end
end

module Temporal
  module Proto
    WorkflowExecutionInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("execution.WorkflowExecutionInfo").msgclass
    WorkflowExecutionConfiguration = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("execution.WorkflowExecutionConfiguration").msgclass
    PendingActivityInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("execution.PendingActivityInfo").msgclass
    PendingChildExecutionInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("execution.PendingChildExecutionInfo").msgclass
    ResetPoints = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("execution.ResetPoints").msgclass
    ResetPointInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("execution.ResetPointInfo").msgclass
  end
end
