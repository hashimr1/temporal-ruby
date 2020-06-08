# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: common/enum.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("common/enum.proto", :syntax => :proto3) do
    add_enum "common.EncodingType" do
      value :Proto3, 0
      value :JSON, 1
    end
    add_enum "common.WorkflowIdReusePolicy" do
      value :AllowDuplicate, 0
      value :AllowDuplicateFailedOnly, 1
      value :RejectDuplicate, 2
    end
    add_enum "common.ParentClosePolicy" do
      value :Abandon, 0
      value :RequestCancel, 1
      value :Terminate, 2
    end
    add_enum "common.IndexedValueType" do
      value :String, 0
      value :Keyword, 1
      value :Int, 2
      value :Double, 3
      value :Bool, 4
      value :Datetime, 5
    end
    add_enum "common.ContinueAsNewInitiator" do
      value :Decider, 0
      value :Retry, 1
      value :CronSchedule, 2
    end
    add_enum "common.TimeoutType" do
      value :StartToClose, 0
      value :ScheduleToStart, 1
      value :ScheduleToClose, 2
      value :Heartbeat, 3
    end
    add_enum "common.RetryStatus" do
      value :InProgress, 0
      value :NonRetryableFailure, 1
      value :Timeout, 2
      value :MaximumAttemptsReached, 3
      value :RetryPolicyNotSet, 4
      value :InternalServerError, 5
      value :CancelRequested, 6
    end
  end
end

module Temporal
  module Proto
    EncodingType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("common.EncodingType").enummodule
    WorkflowIdReusePolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("common.WorkflowIdReusePolicy").enummodule
    ParentClosePolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("common.ParentClosePolicy").enummodule
    IndexedValueType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("common.IndexedValueType").enummodule
    ContinueAsNewInitiator = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("common.ContinueAsNewInitiator").enummodule
    TimeoutType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("common.TimeoutType").enummodule
    RetryStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("common.RetryStatus").enummodule
  end
end
