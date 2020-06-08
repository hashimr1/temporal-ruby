# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: tasklist/message.proto

require 'google/protobuf'

require 'tasklist/enum_pb'
require 'google/protobuf/wrappers_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("tasklist/message.proto", :syntax => :proto3) do
    add_message "tasklist.TaskList" do
      optional :name, :string, 1
      optional :kind, :enum, 2, "tasklist.TaskListKind"
    end
    add_message "tasklist.TaskListMetadata" do
      optional :maxTasksPerSecond, :message, 1, "google.protobuf.DoubleValue"
    end
    add_message "tasklist.TaskListStatus" do
      optional :backlogCountHint, :int64, 1
      optional :readLevel, :int64, 2
      optional :ackLevel, :int64, 3
      optional :ratePerSecond, :double, 4
      optional :taskIdBlock, :message, 5, "tasklist.TaskIdBlock"
    end
    add_message "tasklist.TaskIdBlock" do
      optional :startId, :int64, 1
      optional :endId, :int64, 2
    end
    add_message "tasklist.TaskListPartitionMetadata" do
      optional :key, :string, 1
      optional :ownerHostName, :string, 2
    end
    add_message "tasklist.PollerInfo" do
      optional :lastAccessTime, :int64, 1
      optional :identity, :string, 2
      optional :ratePerSecond, :double, 3
    end
  end
end

module Temporal
  module Proto
    TaskList = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tasklist.TaskList").msgclass
    TaskListMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tasklist.TaskListMetadata").msgclass
    TaskListStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tasklist.TaskListStatus").msgclass
    TaskIdBlock = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tasklist.TaskIdBlock").msgclass
    TaskListPartitionMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tasklist.TaskListPartitionMetadata").msgclass
    PollerInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tasklist.PollerInfo").msgclass
  end
end
