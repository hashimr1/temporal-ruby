# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: workflowservice/request_response.proto

require 'google/protobuf'

require 'common/enum_pb'
require 'common/message_pb'
require 'event/enum_pb'
require 'event/message_pb'
require 'execution/message_pb'
require 'decision/message_pb'
require 'failure/message_pb'
require 'filter/enum_pb'
require 'filter/message_pb'
require 'namespace/message_pb'
require 'namespace/enum_pb'
require 'query/enum_pb'
require 'query/message_pb'
require 'replication/message_pb'
require 'tasklist/enum_pb'
require 'tasklist/message_pb'
require 'version/message_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("workflowservice/request_response.proto", :syntax => :proto3) do
    add_message "workflowservice.RegisterNamespaceRequest" do
      optional :name, :string, 1
      optional :description, :string, 2
      optional :ownerEmail, :string, 3
      optional :workflowExecutionRetentionPeriodInDays, :int32, 4
      optional :emitMetric, :bool, 5
      repeated :clusters, :message, 6, "replication.ClusterReplicationConfiguration"
      optional :activeClusterName, :string, 7
      map :data, :string, :string, 8
      optional :securityToken, :string, 9
      optional :isGlobalNamespace, :bool, 10
      optional :historyArchivalStatus, :enum, 11, "namespace.ArchivalStatus"
      optional :historyArchivalURI, :string, 12
      optional :visibilityArchivalStatus, :enum, 13, "namespace.ArchivalStatus"
      optional :visibilityArchivalURI, :string, 14
    end
    add_message "workflowservice.RegisterNamespaceResponse" do
    end
    add_message "workflowservice.ListNamespacesRequest" do
      optional :pageSize, :int32, 1
      optional :nextPageToken, :bytes, 2
    end
    add_message "workflowservice.ListNamespacesResponse" do
      repeated :namespaces, :message, 1, "workflowservice.DescribeNamespaceResponse"
      optional :nextPageToken, :bytes, 2
    end
    add_message "workflowservice.DescribeNamespaceRequest" do
      optional :name, :string, 1
      optional :id, :string, 2
    end
    add_message "workflowservice.DescribeNamespaceResponse" do
      optional :namespaceInfo, :message, 1, "namespace.NamespaceInfo"
      optional :configuration, :message, 2, "namespace.NamespaceConfiguration"
      optional :replicationConfiguration, :message, 3, "replication.NamespaceReplicationConfiguration"
      optional :failoverVersion, :int64, 4
      optional :isGlobalNamespace, :bool, 5
    end
    add_message "workflowservice.UpdateNamespaceRequest" do
      optional :name, :string, 1
      optional :updatedInfo, :message, 2, "namespace.UpdateNamespaceInfo"
      optional :configuration, :message, 3, "namespace.NamespaceConfiguration"
      optional :replicationConfiguration, :message, 4, "replication.NamespaceReplicationConfiguration"
      optional :securityToken, :string, 5
      optional :deleteBadBinary, :string, 6
    end
    add_message "workflowservice.UpdateNamespaceResponse" do
      optional :namespaceInfo, :message, 1, "namespace.NamespaceInfo"
      optional :configuration, :message, 2, "namespace.NamespaceConfiguration"
      optional :replicationConfiguration, :message, 3, "replication.NamespaceReplicationConfiguration"
      optional :failoverVersion, :int64, 4
      optional :isGlobalNamespace, :bool, 5
    end
    add_message "workflowservice.DeprecateNamespaceRequest" do
      optional :name, :string, 1
      optional :securityToken, :string, 2
    end
    add_message "workflowservice.DeprecateNamespaceResponse" do
    end
    add_message "workflowservice.StartWorkflowExecutionRequest" do
      optional :namespace, :string, 1
      optional :workflowId, :string, 2
      optional :workflowType, :message, 3, "common.WorkflowType"
      optional :taskList, :message, 4, "tasklist.TaskList"
      optional :input, :message, 5, "common.Payloads"
      optional :workflowExecutionTimeoutSeconds, :int32, 6
      optional :workflowRunTimeoutSeconds, :int32, 7
      optional :workflowTaskTimeoutSeconds, :int32, 8
      optional :identity, :string, 9
      optional :requestId, :string, 10
      optional :workflowIdReusePolicy, :enum, 11, "common.WorkflowIdReusePolicy"
      optional :retryPolicy, :message, 12, "common.RetryPolicy"
      optional :cronSchedule, :string, 13
      optional :memo, :message, 14, "common.Memo"
      optional :searchAttributes, :message, 15, "common.SearchAttributes"
      optional :header, :message, 16, "common.Header"
    end
    add_message "workflowservice.StartWorkflowExecutionResponse" do
      optional :runId, :string, 1
    end
    add_message "workflowservice.GetWorkflowExecutionHistoryRequest" do
      optional :namespace, :string, 1
      optional :execution, :message, 2, "common.WorkflowExecution"
      optional :maximumPageSize, :int32, 3
      optional :nextPageToken, :bytes, 4
      optional :waitForNewEvent, :bool, 5
      optional :historyEventFilterType, :enum, 6, "filter.HistoryEventFilterType"
      optional :skipArchival, :bool, 7
    end
    add_message "workflowservice.GetWorkflowExecutionHistoryResponse" do
      optional :history, :message, 1, "event.History"
      repeated :rawHistory, :message, 2, "common.DataBlob"
      optional :nextPageToken, :bytes, 3
      optional :archived, :bool, 4
    end
    add_message "workflowservice.PollForDecisionTaskRequest" do
      optional :namespace, :string, 1
      optional :taskList, :message, 2, "tasklist.TaskList"
      optional :identity, :string, 3
      optional :binaryChecksum, :string, 4
    end
    add_message "workflowservice.PollForDecisionTaskResponse" do
      optional :taskToken, :bytes, 1
      optional :workflowExecution, :message, 2, "common.WorkflowExecution"
      optional :workflowType, :message, 3, "common.WorkflowType"
      optional :previousStartedEventId, :int64, 4
      optional :startedEventId, :int64, 5
      optional :attempt, :int64, 6
      optional :backlogCountHint, :int64, 7
      optional :history, :message, 8, "event.History"
      optional :nextPageToken, :bytes, 9
      optional :query, :message, 10, "query.WorkflowQuery"
      optional :workflowExecutionTaskList, :message, 11, "tasklist.TaskList"
      optional :scheduledTimestamp, :int64, 12
      optional :startedTimestamp, :int64, 13
      map :queries, :string, :message, 14, "query.WorkflowQuery"
    end
    add_message "workflowservice.RespondDecisionTaskCompletedRequest" do
      optional :taskToken, :bytes, 1
      repeated :decisions, :message, 2, "decision.Decision"
      optional :identity, :string, 3
      optional :stickyAttributes, :message, 4, "decision.StickyExecutionAttributes"
      optional :returnNewDecisionTask, :bool, 5
      optional :forceCreateNewDecisionTask, :bool, 6
      optional :binaryChecksum, :string, 7
      map :queryResults, :string, :message, 8, "query.WorkflowQueryResult"
    end
    add_message "workflowservice.RespondDecisionTaskCompletedResponse" do
      optional :decisionTask, :message, 1, "workflowservice.PollForDecisionTaskResponse"
    end
    add_message "workflowservice.RespondDecisionTaskFailedRequest" do
      optional :taskToken, :bytes, 1
      optional :cause, :enum, 2, "event.DecisionTaskFailedCause"
      optional :failure, :message, 3, "failure.Failure"
      optional :identity, :string, 4
      optional :binaryChecksum, :string, 5
    end
    add_message "workflowservice.RespondDecisionTaskFailedResponse" do
    end
    add_message "workflowservice.PollForActivityTaskRequest" do
      optional :namespace, :string, 1
      optional :taskList, :message, 2, "tasklist.TaskList"
      optional :identity, :string, 3
      optional :taskListMetadata, :message, 4, "tasklist.TaskListMetadata"
    end
    add_message "workflowservice.PollForActivityTaskResponse" do
      optional :taskToken, :bytes, 1
      optional :workflowNamespace, :string, 2
      optional :workflowType, :message, 3, "common.WorkflowType"
      optional :workflowExecution, :message, 4, "common.WorkflowExecution"
      optional :activityType, :message, 5, "common.ActivityType"
      optional :activityId, :string, 6
      optional :header, :message, 7, "common.Header"
      optional :input, :message, 8, "common.Payloads"
      optional :heartbeatDetails, :message, 9, "common.Payloads"
      optional :scheduledTimestamp, :int64, 10
      optional :scheduledTimestampOfThisAttempt, :int64, 11
      optional :startedTimestamp, :int64, 12
      optional :attempt, :int32, 13
      optional :scheduleToCloseTimeoutSeconds, :int32, 14
      optional :startToCloseTimeoutSeconds, :int32, 15
      optional :heartbeatTimeoutSeconds, :int32, 16
      optional :retryPolicy, :message, 17, "common.RetryPolicy"
    end
    add_message "workflowservice.RecordActivityTaskHeartbeatRequest" do
      optional :taskToken, :bytes, 1
      optional :details, :message, 2, "common.Payloads"
      optional :identity, :string, 3
    end
    add_message "workflowservice.RecordActivityTaskHeartbeatResponse" do
      optional :cancelRequested, :bool, 1
    end
    add_message "workflowservice.RecordActivityTaskHeartbeatByIdRequest" do
      optional :namespace, :string, 1
      optional :workflowId, :string, 2
      optional :runId, :string, 3
      optional :activityId, :string, 4
      optional :details, :message, 5, "common.Payloads"
      optional :identity, :string, 6
    end
    add_message "workflowservice.RecordActivityTaskHeartbeatByIdResponse" do
      optional :cancelRequested, :bool, 1
    end
    add_message "workflowservice.RespondActivityTaskCompletedRequest" do
      optional :taskToken, :bytes, 1
      optional :result, :message, 2, "common.Payloads"
      optional :identity, :string, 3
    end
    add_message "workflowservice.RespondActivityTaskCompletedResponse" do
    end
    add_message "workflowservice.RespondActivityTaskCompletedByIdRequest" do
      optional :namespace, :string, 1
      optional :workflowId, :string, 2
      optional :runId, :string, 3
      optional :activityId, :string, 4
      optional :result, :message, 5, "common.Payloads"
      optional :identity, :string, 6
    end
    add_message "workflowservice.RespondActivityTaskCompletedByIdResponse" do
    end
    add_message "workflowservice.RespondActivityTaskFailedRequest" do
      optional :taskToken, :bytes, 1
      optional :failure, :message, 2, "failure.Failure"
      optional :identity, :string, 3
    end
    add_message "workflowservice.RespondActivityTaskFailedResponse" do
    end
    add_message "workflowservice.RespondActivityTaskFailedByIdRequest" do
      optional :namespace, :string, 1
      optional :workflowId, :string, 2
      optional :runId, :string, 3
      optional :activityId, :string, 4
      optional :failure, :message, 5, "failure.Failure"
      optional :identity, :string, 6
    end
    add_message "workflowservice.RespondActivityTaskFailedByIdResponse" do
    end
    add_message "workflowservice.RespondActivityTaskCanceledRequest" do
      optional :taskToken, :bytes, 1
      optional :details, :message, 2, "common.Payloads"
      optional :identity, :string, 3
    end
    add_message "workflowservice.RespondActivityTaskCanceledResponse" do
    end
    add_message "workflowservice.RespondActivityTaskCanceledByIdRequest" do
      optional :namespace, :string, 1
      optional :workflowId, :string, 2
      optional :runId, :string, 3
      optional :activityId, :string, 4
      optional :details, :message, 5, "common.Payloads"
      optional :identity, :string, 6
    end
    add_message "workflowservice.RespondActivityTaskCanceledByIdResponse" do
    end
    add_message "workflowservice.RequestCancelWorkflowExecutionRequest" do
      optional :namespace, :string, 1
      optional :workflowExecution, :message, 2, "common.WorkflowExecution"
      optional :identity, :string, 3
      optional :requestId, :string, 4
    end
    add_message "workflowservice.RequestCancelWorkflowExecutionResponse" do
    end
    add_message "workflowservice.SignalWorkflowExecutionRequest" do
      optional :namespace, :string, 1
      optional :workflowExecution, :message, 2, "common.WorkflowExecution"
      optional :signalName, :string, 3
      optional :input, :message, 4, "common.Payloads"
      optional :identity, :string, 5
      optional :requestId, :string, 6
      optional :control, :string, 7
    end
    add_message "workflowservice.SignalWorkflowExecutionResponse" do
    end
    add_message "workflowservice.SignalWithStartWorkflowExecutionRequest" do
      optional :namespace, :string, 1
      optional :workflowId, :string, 2
      optional :workflowType, :message, 3, "common.WorkflowType"
      optional :taskList, :message, 4, "tasklist.TaskList"
      optional :input, :message, 5, "common.Payloads"
      optional :workflowExecutionTimeoutSeconds, :int32, 6
      optional :workflowRunTimeoutSeconds, :int32, 7
      optional :workflowTaskTimeoutSeconds, :int32, 8
      optional :identity, :string, 9
      optional :requestId, :string, 10
      optional :workflowIdReusePolicy, :enum, 11, "common.WorkflowIdReusePolicy"
      optional :signalName, :string, 12
      optional :signalInput, :message, 13, "common.Payloads"
      optional :control, :string, 14
      optional :retryPolicy, :message, 15, "common.RetryPolicy"
      optional :cronSchedule, :string, 16
      optional :memo, :message, 17, "common.Memo"
      optional :searchAttributes, :message, 18, "common.SearchAttributes"
      optional :header, :message, 19, "common.Header"
    end
    add_message "workflowservice.SignalWithStartWorkflowExecutionResponse" do
      optional :runId, :string, 1
    end
    add_message "workflowservice.ResetWorkflowExecutionRequest" do
      optional :namespace, :string, 1
      optional :workflowExecution, :message, 2, "common.WorkflowExecution"
      optional :reason, :string, 3
      optional :decisionFinishEventId, :int64, 4
      optional :requestId, :string, 5
    end
    add_message "workflowservice.ResetWorkflowExecutionResponse" do
      optional :runId, :string, 1
    end
    add_message "workflowservice.TerminateWorkflowExecutionRequest" do
      optional :namespace, :string, 1
      optional :workflowExecution, :message, 2, "common.WorkflowExecution"
      optional :reason, :string, 3
      optional :details, :message, 4, "common.Payloads"
      optional :identity, :string, 5
    end
    add_message "workflowservice.TerminateWorkflowExecutionResponse" do
    end
    add_message "workflowservice.ListOpenWorkflowExecutionsRequest" do
      optional :namespace, :string, 1
      optional :maximumPageSize, :int32, 2
      optional :nextPageToken, :bytes, 3
      optional :startTimeFilter, :message, 4, "filter.StartTimeFilter"
      oneof :filters do
        optional :executionFilter, :message, 5, "filter.WorkflowExecutionFilter"
        optional :typeFilter, :message, 6, "filter.WorkflowTypeFilter"
      end
    end
    add_message "workflowservice.ListOpenWorkflowExecutionsResponse" do
      repeated :executions, :message, 1, "execution.WorkflowExecutionInfo"
      optional :nextPageToken, :bytes, 2
    end
    add_message "workflowservice.ListClosedWorkflowExecutionsRequest" do
      optional :namespace, :string, 1
      optional :maximumPageSize, :int32, 2
      optional :nextPageToken, :bytes, 3
      optional :startTimeFilter, :message, 4, "filter.StartTimeFilter"
      oneof :filters do
        optional :executionFilter, :message, 5, "filter.WorkflowExecutionFilter"
        optional :typeFilter, :message, 6, "filter.WorkflowTypeFilter"
        optional :statusFilter, :message, 7, "filter.StatusFilter"
      end
    end
    add_message "workflowservice.ListClosedWorkflowExecutionsResponse" do
      repeated :executions, :message, 1, "execution.WorkflowExecutionInfo"
      optional :nextPageToken, :bytes, 2
    end
    add_message "workflowservice.ListWorkflowExecutionsRequest" do
      optional :namespace, :string, 1
      optional :pageSize, :int32, 2
      optional :nextPageToken, :bytes, 3
      optional :query, :string, 4
    end
    add_message "workflowservice.ListWorkflowExecutionsResponse" do
      repeated :executions, :message, 1, "execution.WorkflowExecutionInfo"
      optional :nextPageToken, :bytes, 2
    end
    add_message "workflowservice.ListArchivedWorkflowExecutionsRequest" do
      optional :namespace, :string, 1
      optional :pageSize, :int32, 2
      optional :nextPageToken, :bytes, 3
      optional :query, :string, 4
    end
    add_message "workflowservice.ListArchivedWorkflowExecutionsResponse" do
      repeated :executions, :message, 1, "execution.WorkflowExecutionInfo"
      optional :nextPageToken, :bytes, 2
    end
    add_message "workflowservice.ScanWorkflowExecutionsRequest" do
      optional :namespace, :string, 1
      optional :pageSize, :int32, 2
      optional :nextPageToken, :bytes, 3
      optional :query, :string, 4
    end
    add_message "workflowservice.ScanWorkflowExecutionsResponse" do
      repeated :executions, :message, 1, "execution.WorkflowExecutionInfo"
      optional :nextPageToken, :bytes, 2
    end
    add_message "workflowservice.CountWorkflowExecutionsRequest" do
      optional :namespace, :string, 1
      optional :query, :string, 2
    end
    add_message "workflowservice.CountWorkflowExecutionsResponse" do
      optional :count, :int64, 1
    end
    add_message "workflowservice.GetSearchAttributesRequest" do
    end
    add_message "workflowservice.GetSearchAttributesResponse" do
      map :keys, :string, :enum, 1, "common.IndexedValueType"
    end
    add_message "workflowservice.RespondQueryTaskCompletedRequest" do
      optional :taskToken, :bytes, 1
      optional :completedType, :enum, 2, "query.QueryResultType"
      optional :queryResult, :message, 3, "common.Payloads"
      optional :errorMessage, :string, 4
      optional :workerVersionInfo, :message, 5, "version.WorkerVersionInfo"
    end
    add_message "workflowservice.RespondQueryTaskCompletedResponse" do
    end
    add_message "workflowservice.ResetStickyTaskListRequest" do
      optional :namespace, :string, 1
      optional :execution, :message, 2, "common.WorkflowExecution"
    end
    add_message "workflowservice.ResetStickyTaskListResponse" do
    end
    add_message "workflowservice.QueryWorkflowRequest" do
      optional :namespace, :string, 1
      optional :execution, :message, 2, "common.WorkflowExecution"
      optional :query, :message, 3, "query.WorkflowQuery"
      optional :queryRejectCondition, :enum, 4, "query.QueryRejectCondition"
      optional :queryConsistencyLevel, :enum, 5, "query.QueryConsistencyLevel"
    end
    add_message "workflowservice.QueryWorkflowResponse" do
      optional :queryResult, :message, 1, "common.Payloads"
      optional :queryRejected, :message, 2, "query.QueryRejected"
    end
    add_message "workflowservice.DescribeWorkflowExecutionRequest" do
      optional :namespace, :string, 1
      optional :execution, :message, 2, "common.WorkflowExecution"
    end
    add_message "workflowservice.DescribeWorkflowExecutionResponse" do
      optional :executionConfiguration, :message, 1, "execution.WorkflowExecutionConfiguration"
      optional :workflowExecutionInfo, :message, 2, "execution.WorkflowExecutionInfo"
      repeated :pendingActivities, :message, 3, "execution.PendingActivityInfo"
      repeated :pendingChildren, :message, 4, "execution.PendingChildExecutionInfo"
    end
    add_message "workflowservice.DescribeTaskListRequest" do
      optional :namespace, :string, 1
      optional :taskList, :message, 2, "tasklist.TaskList"
      optional :taskListType, :enum, 3, "tasklist.TaskListType"
      optional :includeTaskListStatus, :bool, 4
    end
    add_message "workflowservice.DescribeTaskListResponse" do
      repeated :pollers, :message, 1, "tasklist.PollerInfo"
      optional :taskListStatus, :message, 2, "tasklist.TaskListStatus"
    end
    add_message "workflowservice.GetClusterInfoRequest" do
    end
    add_message "workflowservice.GetClusterInfoResponse" do
      optional :supportedClientVersions, :message, 1, "version.SupportedClientVersions"
    end
    add_message "workflowservice.ListTaskListPartitionsRequest" do
      optional :namespace, :string, 1
      optional :taskList, :message, 2, "tasklist.TaskList"
    end
    add_message "workflowservice.ListTaskListPartitionsResponse" do
      repeated :activityTaskListPartitions, :message, 1, "tasklist.TaskListPartitionMetadata"
      repeated :decisionTaskListPartitions, :message, 2, "tasklist.TaskListPartitionMetadata"
    end
  end
end

module Temporal
  module Proto
    RegisterNamespaceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.RegisterNamespaceRequest").msgclass
    RegisterNamespaceResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.RegisterNamespaceResponse").msgclass
    ListNamespacesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.ListNamespacesRequest").msgclass
    ListNamespacesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.ListNamespacesResponse").msgclass
    DescribeNamespaceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.DescribeNamespaceRequest").msgclass
    DescribeNamespaceResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.DescribeNamespaceResponse").msgclass
    UpdateNamespaceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.UpdateNamespaceRequest").msgclass
    UpdateNamespaceResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.UpdateNamespaceResponse").msgclass
    DeprecateNamespaceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.DeprecateNamespaceRequest").msgclass
    DeprecateNamespaceResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.DeprecateNamespaceResponse").msgclass
    StartWorkflowExecutionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.StartWorkflowExecutionRequest").msgclass
    StartWorkflowExecutionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.StartWorkflowExecutionResponse").msgclass
    GetWorkflowExecutionHistoryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.GetWorkflowExecutionHistoryRequest").msgclass
    GetWorkflowExecutionHistoryResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.GetWorkflowExecutionHistoryResponse").msgclass
    PollForDecisionTaskRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.PollForDecisionTaskRequest").msgclass
    PollForDecisionTaskResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.PollForDecisionTaskResponse").msgclass
    RespondDecisionTaskCompletedRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.RespondDecisionTaskCompletedRequest").msgclass
    RespondDecisionTaskCompletedResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.RespondDecisionTaskCompletedResponse").msgclass
    RespondDecisionTaskFailedRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.RespondDecisionTaskFailedRequest").msgclass
    RespondDecisionTaskFailedResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.RespondDecisionTaskFailedResponse").msgclass
    PollForActivityTaskRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.PollForActivityTaskRequest").msgclass
    PollForActivityTaskResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.PollForActivityTaskResponse").msgclass
    RecordActivityTaskHeartbeatRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.RecordActivityTaskHeartbeatRequest").msgclass
    RecordActivityTaskHeartbeatResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.RecordActivityTaskHeartbeatResponse").msgclass
    RecordActivityTaskHeartbeatByIdRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.RecordActivityTaskHeartbeatByIdRequest").msgclass
    RecordActivityTaskHeartbeatByIdResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.RecordActivityTaskHeartbeatByIdResponse").msgclass
    RespondActivityTaskCompletedRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.RespondActivityTaskCompletedRequest").msgclass
    RespondActivityTaskCompletedResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.RespondActivityTaskCompletedResponse").msgclass
    RespondActivityTaskCompletedByIdRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.RespondActivityTaskCompletedByIdRequest").msgclass
    RespondActivityTaskCompletedByIdResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.RespondActivityTaskCompletedByIdResponse").msgclass
    RespondActivityTaskFailedRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.RespondActivityTaskFailedRequest").msgclass
    RespondActivityTaskFailedResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.RespondActivityTaskFailedResponse").msgclass
    RespondActivityTaskFailedByIdRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.RespondActivityTaskFailedByIdRequest").msgclass
    RespondActivityTaskFailedByIdResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.RespondActivityTaskFailedByIdResponse").msgclass
    RespondActivityTaskCanceledRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.RespondActivityTaskCanceledRequest").msgclass
    RespondActivityTaskCanceledResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.RespondActivityTaskCanceledResponse").msgclass
    RespondActivityTaskCanceledByIdRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.RespondActivityTaskCanceledByIdRequest").msgclass
    RespondActivityTaskCanceledByIdResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.RespondActivityTaskCanceledByIdResponse").msgclass
    RequestCancelWorkflowExecutionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.RequestCancelWorkflowExecutionRequest").msgclass
    RequestCancelWorkflowExecutionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.RequestCancelWorkflowExecutionResponse").msgclass
    SignalWorkflowExecutionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.SignalWorkflowExecutionRequest").msgclass
    SignalWorkflowExecutionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.SignalWorkflowExecutionResponse").msgclass
    SignalWithStartWorkflowExecutionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.SignalWithStartWorkflowExecutionRequest").msgclass
    SignalWithStartWorkflowExecutionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.SignalWithStartWorkflowExecutionResponse").msgclass
    ResetWorkflowExecutionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.ResetWorkflowExecutionRequest").msgclass
    ResetWorkflowExecutionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.ResetWorkflowExecutionResponse").msgclass
    TerminateWorkflowExecutionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.TerminateWorkflowExecutionRequest").msgclass
    TerminateWorkflowExecutionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.TerminateWorkflowExecutionResponse").msgclass
    ListOpenWorkflowExecutionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.ListOpenWorkflowExecutionsRequest").msgclass
    ListOpenWorkflowExecutionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.ListOpenWorkflowExecutionsResponse").msgclass
    ListClosedWorkflowExecutionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.ListClosedWorkflowExecutionsRequest").msgclass
    ListClosedWorkflowExecutionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.ListClosedWorkflowExecutionsResponse").msgclass
    ListWorkflowExecutionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.ListWorkflowExecutionsRequest").msgclass
    ListWorkflowExecutionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.ListWorkflowExecutionsResponse").msgclass
    ListArchivedWorkflowExecutionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.ListArchivedWorkflowExecutionsRequest").msgclass
    ListArchivedWorkflowExecutionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.ListArchivedWorkflowExecutionsResponse").msgclass
    ScanWorkflowExecutionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.ScanWorkflowExecutionsRequest").msgclass
    ScanWorkflowExecutionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.ScanWorkflowExecutionsResponse").msgclass
    CountWorkflowExecutionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.CountWorkflowExecutionsRequest").msgclass
    CountWorkflowExecutionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.CountWorkflowExecutionsResponse").msgclass
    GetSearchAttributesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.GetSearchAttributesRequest").msgclass
    GetSearchAttributesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.GetSearchAttributesResponse").msgclass
    RespondQueryTaskCompletedRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.RespondQueryTaskCompletedRequest").msgclass
    RespondQueryTaskCompletedResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.RespondQueryTaskCompletedResponse").msgclass
    ResetStickyTaskListRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.ResetStickyTaskListRequest").msgclass
    ResetStickyTaskListResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.ResetStickyTaskListResponse").msgclass
    QueryWorkflowRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.QueryWorkflowRequest").msgclass
    QueryWorkflowResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.QueryWorkflowResponse").msgclass
    DescribeWorkflowExecutionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.DescribeWorkflowExecutionRequest").msgclass
    DescribeWorkflowExecutionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.DescribeWorkflowExecutionResponse").msgclass
    DescribeTaskListRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.DescribeTaskListRequest").msgclass
    DescribeTaskListResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.DescribeTaskListResponse").msgclass
    GetClusterInfoRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.GetClusterInfoRequest").msgclass
    GetClusterInfoResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.GetClusterInfoResponse").msgclass
    ListTaskListPartitionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.ListTaskListPartitionsRequest").msgclass
    ListTaskListPartitionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("workflowservice.ListTaskListPartitionsResponse").msgclass
  end
end
