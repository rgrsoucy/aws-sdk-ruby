# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
module Aws
  module SQS
    module Types

      # @note When making an API call, pass AddPermissionRequest
      #   data as a hash:
      #
      #       {
      #         queue_url: "String", # required
      #         label: "String", # required
      #         aws_account_ids: ["String"], # required
      #         actions: ["String"], # required
      #       }
      class AddPermissionRequest < Aws::Structure.new(
        :queue_url,
        :label,
        :aws_account_ids,
        :actions)

        # @!attribute [rw] queue_url
        #   The URL of the Amazon SQS queue to take action on.
        #
        #   Queue URLs are case-sensitive.
        #   @return [String]

        # @!attribute [rw] label
        #   The unique identification of the permission you\'re setting (e.g.,
        #   `AliceSendMessage`). Constraints: Maximum 80 characters;
        #   alphanumeric characters, hyphens (-), and underscores (\_) are
        #   allowed.
        #   @return [String]

        # @!attribute [rw] aws_account_ids
        #   The AWS account number of the [principal][1] who will be given
        #   permission. The principal must have an AWS account, but does not
        #   need to be signed up for Amazon SQS. For information about locating
        #   the AWS account identification, see [Your AWS Identifiers][2] in the
        #   *Amazon SQS Developer Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/general/latest/gr/glos-chap.html#P
        #   [2]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/AWSCredentials.html
        #   @return [Array<String>]

        # @!attribute [rw] actions
        #   The action the client wants to allow for the specified principal.
        #   The following are valid values: `* | SendMessage | ReceiveMessage |
        #   DeleteMessage | ChangeMessageVisibility | GetQueueAttributes |
        #   GetQueueUrl`. For more information about these actions, see
        #   [Understanding Permissions][1] in the *Amazon SQS Developer Guide*.
        #
        #   Specifying `SendMessage`, `DeleteMessage`, or
        #   `ChangeMessageVisibility` for the `ActionName.n` also grants
        #   permissions for the corresponding batch versions of those actions:
        #   `SendMessageBatch`, `DeleteMessageBatch`, and
        #   `ChangeMessageVisibilityBatch`.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/acp-overview.html#PermissionTypes
        #   @return [Array<String>]

      end

      # This is used in the responses of batch API to give a detailed
      # description of the result of an action on each entry in the request.
      class BatchResultErrorEntry < Aws::Structure.new(
        :id,
        :sender_fault,
        :code,
        :message)

        # @!attribute [rw] id
        #   The id of an entry in a batch request.
        #   @return [String]

        # @!attribute [rw] sender_fault
        #   Whether the error happened due to the sender\'s fault.
        #   @return [Boolean]

        # @!attribute [rw] code
        #   An error code representing why the action failed on this entry.
        #   @return [String]

        # @!attribute [rw] message
        #   A message explaining why the action failed on this entry.
        #   @return [String]

      end

      # @note When making an API call, pass ChangeMessageVisibilityBatchRequest
      #   data as a hash:
      #
      #       {
      #         queue_url: "String", # required
      #         entries: [ # required
      #           {
      #             id: "String", # required
      #             receipt_handle: "String", # required
      #             visibility_timeout: 1,
      #           },
      #         ],
      #       }
      class ChangeMessageVisibilityBatchRequest < Aws::Structure.new(
        :queue_url,
        :entries)

        # @!attribute [rw] queue_url
        #   The URL of the Amazon SQS queue to take action on.
        #
        #   Queue URLs are case-sensitive.
        #   @return [String]

        # @!attribute [rw] entries
        #   A list of receipt handles of the messages for which the visibility
        #   timeout must be changed.
        #   @return [Array<Types::ChangeMessageVisibilityBatchRequestEntry>]

      end

      # Encloses a receipt handle and an entry id for each message in
      # ChangeMessageVisibilityBatch.
      #
      # <important markdown="1"> All of the following parameters are list parameters that must be
      # prefixed with `ChangeMessageVisibilityBatchRequestEntry.n`, where `n`
      # is an integer value starting with 1. For example, a parameter list for
      # this action might look like this:
      #
      #  </important>
      #
      # `<![CDATA[&ChangeMessageVisibilityBatchRequestEntry.1.Id=change_visibility_msg_2]]>`
      #
      # `<![CDATA[&ChangeMessageVisibilityBatchRequestEntry.1.ReceiptHandle=Your_Receipt_Handle]]>`
      #
      # `<![CDATA[&ChangeMessageVisibilityBatchRequestEntry.1.VisibilityTimeout=45]]>`
      # @note When making an API call, pass ChangeMessageVisibilityBatchRequestEntry
      #   data as a hash:
      #
      #       {
      #         id: "String", # required
      #         receipt_handle: "String", # required
      #         visibility_timeout: 1,
      #       }
      class ChangeMessageVisibilityBatchRequestEntry < Aws::Structure.new(
        :id,
        :receipt_handle,
        :visibility_timeout)

        # @!attribute [rw] id
        #   An identifier for this particular receipt handle. This is used to
        #   communicate the result. Note that the `Id`s of a batch request need
        #   to be unique within the request.
        #   @return [String]

        # @!attribute [rw] receipt_handle
        #   A receipt handle.
        #   @return [String]

        # @!attribute [rw] visibility_timeout
        #   The new value (in seconds) for the message\'s visibility timeout.
        #   @return [Integer]

      end

      # For each message in the batch, the response contains a
      # ChangeMessageVisibilityBatchResultEntry tag if the message succeeds or
      # a BatchResultErrorEntry tag if the message fails.
      class ChangeMessageVisibilityBatchResult < Aws::Structure.new(
        :successful,
        :failed)

        # @!attribute [rw] successful
        #   A list of ChangeMessageVisibilityBatchResultEntry items.
        #   @return [Array<Types::ChangeMessageVisibilityBatchResultEntry>]

        # @!attribute [rw] failed
        #   A list of BatchResultErrorEntry items.
        #   @return [Array<Types::BatchResultErrorEntry>]

      end

      # Encloses the id of an entry in ChangeMessageVisibilityBatch.
      class ChangeMessageVisibilityBatchResultEntry < Aws::Structure.new(
        :id)

        # @!attribute [rw] id
        #   Represents a message whose visibility timeout has been changed
        #   successfully.
        #   @return [String]

      end

      # @note When making an API call, pass ChangeMessageVisibilityRequest
      #   data as a hash:
      #
      #       {
      #         queue_url: "String", # required
      #         receipt_handle: "String", # required
      #         visibility_timeout: 1, # required
      #       }
      class ChangeMessageVisibilityRequest < Aws::Structure.new(
        :queue_url,
        :receipt_handle,
        :visibility_timeout)

        # @!attribute [rw] queue_url
        #   The URL of the Amazon SQS queue to take action on.
        #
        #   Queue URLs are case-sensitive.
        #   @return [String]

        # @!attribute [rw] receipt_handle
        #   The receipt handle associated with the message whose visibility
        #   timeout should be changed. This parameter is returned by the
        #   ReceiveMessage action.
        #   @return [String]

        # @!attribute [rw] visibility_timeout
        #   The new value (in seconds - from 0 to 43200 - maximum 12 hours) for
        #   the message\'s visibility timeout.
        #   @return [Integer]

      end

      # @note When making an API call, pass CreateQueueRequest
      #   data as a hash:
      #
      #       {
      #         queue_name: "String", # required
      #         attributes: {
      #           "Policy" => "String",
      #         },
      #       }
      class CreateQueueRequest < Aws::Structure.new(
        :queue_name,
        :attributes)

        # @!attribute [rw] queue_name
        #   The name for the queue to be created.
        #
        #   Queue names are case-sensitive.
        #   @return [String]

        # @!attribute [rw] attributes
        #   A map of attributes with their corresponding values.
        #
        #   The following lists the names, descriptions, and values of the
        #   special request parameters the `CreateQueue` action uses:
        #
        #   * `DelaySeconds` - The time in seconds that the delivery of all
        #     messages in the queue will be delayed. An integer from 0 to 900
        #     (15 minutes). The default for this attribute is 0 (zero).
        #
        #   * `MaximumMessageSize` - The limit of how many bytes a message can
        #     contain before Amazon SQS rejects it. An integer from 1024 bytes
        #     (1 KiB) up to 262144 bytes (256 KiB). The default for this
        #     attribute is 262144 (256 KiB).
        #
        #   * `MessageRetentionPeriod` - The number of seconds Amazon SQS
        #     retains a message. Integer representing seconds, from 60 (1
        #     minute) to 1209600 (14 days). The default for this attribute is
        #     345600 (4 days).
        #
        #   * `Policy` - The queue\'s policy. A valid AWS policy. For more
        #     information about policy structure, see [Overview of AWS IAM
        #     Policies][1] in the *Amazon IAM User Guide*.
        #
        #   * `ReceiveMessageWaitTimeSeconds` - The time for which a
        #     ReceiveMessage call will wait for a message to arrive. An integer
        #     from 0 to 20 (seconds). The default for this attribute is 0.
        #
        #   * `RedrivePolicy` - The parameters for dead letter queue
        #     functionality of the source queue. For more information about
        #     RedrivePolicy and dead letter queues, see [Using Amazon SQS Dead
        #     Letter Queues][2] in the *Amazon SQS Developer Guide*.
        #
        #   * `VisibilityTimeout` - The visibility timeout for the queue. An
        #     integer from 0 to 43200 (12 hours). The default for this attribute
        #     is 30. For more information about visibility timeout, see
        #     [Visibility Timeout][3] in the *Amazon SQS Developer Guide*.
        #
        #   Any other valid special request parameters that are specified (such
        #   as `ApproximateNumberOfMessages`,
        #   `ApproximateNumberOfMessagesDelayed`,
        #   `ApproximateNumberOfMessagesNotVisible`, `CreatedTimestamp`,
        #   `LastModifiedTimestamp`, and `QueueArn`) will be ignored.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/PoliciesOverview.html
        #   [2]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/SQSDeadLetterQueue.html
        #   [3]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/AboutVT.html
        #   @return [Hash<String,String>]

      end

      # Returns the QueueUrl element of the created queue.
      class CreateQueueResult < Aws::Structure.new(
        :queue_url)

        # @!attribute [rw] queue_url
        #   The URL for the created Amazon SQS queue.
        #   @return [String]

      end

      # @note When making an API call, pass DeleteMessageBatchRequest
      #   data as a hash:
      #
      #       {
      #         queue_url: "String", # required
      #         entries: [ # required
      #           {
      #             id: "String", # required
      #             receipt_handle: "String", # required
      #           },
      #         ],
      #       }
      class DeleteMessageBatchRequest < Aws::Structure.new(
        :queue_url,
        :entries)

        # @!attribute [rw] queue_url
        #   The URL of the Amazon SQS queue to take action on.
        #
        #   Queue URLs are case-sensitive.
        #   @return [String]

        # @!attribute [rw] entries
        #   A list of receipt handles for the messages to be deleted.
        #   @return [Array<Types::DeleteMessageBatchRequestEntry>]

      end

      # Encloses a receipt handle and an identifier for it.
      # @note When making an API call, pass DeleteMessageBatchRequestEntry
      #   data as a hash:
      #
      #       {
      #         id: "String", # required
      #         receipt_handle: "String", # required
      #       }
      class DeleteMessageBatchRequestEntry < Aws::Structure.new(
        :id,
        :receipt_handle)

        # @!attribute [rw] id
        #   An identifier for this particular receipt handle. This is used to
        #   communicate the result. Note that the `Id`s of a batch request need
        #   to be unique within the request.
        #   @return [String]

        # @!attribute [rw] receipt_handle
        #   A receipt handle.
        #   @return [String]

      end

      # For each message in the batch, the response contains a
      # DeleteMessageBatchResultEntry tag if the message is deleted or a
      # BatchResultErrorEntry tag if the message cannot be deleted.
      class DeleteMessageBatchResult < Aws::Structure.new(
        :successful,
        :failed)

        # @!attribute [rw] successful
        #   A list of DeleteMessageBatchResultEntry items.
        #   @return [Array<Types::DeleteMessageBatchResultEntry>]

        # @!attribute [rw] failed
        #   A list of BatchResultErrorEntry items.
        #   @return [Array<Types::BatchResultErrorEntry>]

      end

      # Encloses the id an entry in DeleteMessageBatch.
      class DeleteMessageBatchResultEntry < Aws::Structure.new(
        :id)

        # @!attribute [rw] id
        #   Represents a successfully deleted message.
        #   @return [String]

      end

      # @note When making an API call, pass DeleteMessageRequest
      #   data as a hash:
      #
      #       {
      #         queue_url: "String", # required
      #         receipt_handle: "String", # required
      #       }
      class DeleteMessageRequest < Aws::Structure.new(
        :queue_url,
        :receipt_handle)

        # @!attribute [rw] queue_url
        #   The URL of the Amazon SQS queue to take action on.
        #
        #   Queue URLs are case-sensitive.
        #   @return [String]

        # @!attribute [rw] receipt_handle
        #   The receipt handle associated with the message to delete.
        #   @return [String]

      end

      # @note When making an API call, pass DeleteQueueRequest
      #   data as a hash:
      #
      #       {
      #         queue_url: "String", # required
      #       }
      class DeleteQueueRequest < Aws::Structure.new(
        :queue_url)

        # @!attribute [rw] queue_url
        #   The URL of the Amazon SQS queue to take action on.
        #
        #   Queue URLs are case-sensitive.
        #   @return [String]

      end

      # @note When making an API call, pass GetQueueAttributesRequest
      #   data as a hash:
      #
      #       {
      #         queue_url: "String", # required
      #         attribute_names: ["Policy"], # accepts Policy, VisibilityTimeout, MaximumMessageSize, MessageRetentionPeriod, ApproximateNumberOfMessages, ApproximateNumberOfMessagesNotVisible, CreatedTimestamp, LastModifiedTimestamp, QueueArn, ApproximateNumberOfMessagesDelayed, DelaySeconds, ReceiveMessageWaitTimeSeconds, RedrivePolicy
      #       }
      class GetQueueAttributesRequest < Aws::Structure.new(
        :queue_url,
        :attribute_names)

        # @!attribute [rw] queue_url
        #   The URL of the Amazon SQS queue to take action on.
        #
        #   Queue URLs are case-sensitive.
        #   @return [String]

        # @!attribute [rw] attribute_names
        #   A list of attributes to retrieve information for. The following
        #   attributes are supported:
        #
        #   * `All` - returns all values.
        #
        #   * `ApproximateNumberOfMessages` - returns the approximate number of
        #     visible messages in a queue. For more information, see [Resources
        #     Required to Process Messages][1] in the *Amazon SQS Developer
        #     Guide*.
        #
        #   * `ApproximateNumberOfMessagesNotVisible` - returns the approximate
        #     number of messages that are not timed-out and not deleted. For
        #     more information, see [Resources Required to Process Messages][1]
        #     in the *Amazon SQS Developer Guide*.
        #
        #   * `VisibilityTimeout` - returns the visibility timeout for the
        #     queue. For more information about visibility timeout, see
        #     [Visibility Timeout][2] in the *Amazon SQS Developer Guide*.
        #
        #   * `CreatedTimestamp` - returns the time when the queue was created
        #     (epoch time in seconds).
        #
        #   * `LastModifiedTimestamp` - returns the time when the queue was last
        #     changed (epoch time in seconds).
        #
        #   * `Policy` - returns the queue\'s policy.
        #
        #   * `MaximumMessageSize` - returns the limit of how many bytes a
        #     message can contain before Amazon SQS rejects it.
        #
        #   * `MessageRetentionPeriod` - returns the number of seconds Amazon
        #     SQS retains a message.
        #
        #   * `QueueArn` - returns the queue\'s Amazon resource name (ARN).
        #
        #   * `ApproximateNumberOfMessagesDelayed` - returns the approximate
        #     number of messages that are pending to be added to the queue.
        #
        #   * `DelaySeconds` - returns the default delay on the queue in
        #     seconds.
        #
        #   * `ReceiveMessageWaitTimeSeconds` - returns the time for which a
        #     ReceiveMessage call will wait for a message to arrive.
        #
        #   * `RedrivePolicy` - returns the parameters for dead letter queue
        #     functionality of the source queue. For more information about
        #     RedrivePolicy and dead letter queues, see [Using Amazon SQS Dead
        #     Letter Queues][3] in the *Amazon SQS Developer Guide*.
        #
        #   <note markdown="1">Going forward, new attributes might be added. If you are writing
        #   code that calls this action, we recommend that you structure your
        #   code so that it can handle new attributes gracefully.
        #
        #   </note>
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/ApproximateNumber.html
        #   [2]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/AboutVT.html
        #   [3]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/SQSDeadLetterQueue.html
        #   @return [Array<String>]

      end

      # A list of returned queue attributes.
      class GetQueueAttributesResult < Aws::Structure.new(
        :attributes)

        # @!attribute [rw] attributes
        #   A map of attributes to the respective values.
        #   @return [Hash<String,String>]

      end

      # @note When making an API call, pass GetQueueUrlRequest
      #   data as a hash:
      #
      #       {
      #         queue_name: "String", # required
      #         queue_owner_aws_account_id: "String",
      #       }
      class GetQueueUrlRequest < Aws::Structure.new(
        :queue_name,
        :queue_owner_aws_account_id)

        # @!attribute [rw] queue_name
        #   The name of the queue whose URL must be fetched. Maximum 80
        #   characters; alphanumeric characters, hyphens (-), and underscores
        #   (\_) are allowed.
        #
        #   Queue names are case-sensitive.
        #   @return [String]

        # @!attribute [rw] queue_owner_aws_account_id
        #   The AWS account ID of the account that created the queue.
        #   @return [String]

      end

      # For more information, see [Responses][1] in the *Amazon SQS Developer
      # Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/UnderstandingResponses.html
      class GetQueueUrlResult < Aws::Structure.new(
        :queue_url)

        # @!attribute [rw] queue_url
        #   The URL for the queue.
        #   @return [String]

      end

      # @note When making an API call, pass ListDeadLetterSourceQueuesRequest
      #   data as a hash:
      #
      #       {
      #         queue_url: "String", # required
      #       }
      class ListDeadLetterSourceQueuesRequest < Aws::Structure.new(
        :queue_url)

        # @!attribute [rw] queue_url
        #   The queue URL of a dead letter queue.
        #
        #   Queue URLs are case-sensitive.
        #   @return [String]

      end

      # A list of your dead letter source queues.
      class ListDeadLetterSourceQueuesResult < Aws::Structure.new(
        :queue_urls)

        # @!attribute [rw] queue_urls
        #   A list of source queue URLs that have the RedrivePolicy queue
        #   attribute configured with a dead letter queue.
        #   @return [Array<String>]

      end

      # @note When making an API call, pass ListQueuesRequest
      #   data as a hash:
      #
      #       {
      #         queue_name_prefix: "String",
      #       }
      class ListQueuesRequest < Aws::Structure.new(
        :queue_name_prefix)

        # @!attribute [rw] queue_name_prefix
        #   A string to use for filtering the list results. Only those queues
        #   whose name begins with the specified string are returned.
        #
        #   Queue names are case-sensitive.
        #   @return [String]

      end

      # A list of your queues.
      class ListQueuesResult < Aws::Structure.new(
        :queue_urls)

        # @!attribute [rw] queue_urls
        #   A list of queue URLs, up to 1000 entries.
        #   @return [Array<String>]

      end

      # An Amazon SQS message.
      class Message < Aws::Structure.new(
        :message_id,
        :receipt_handle,
        :md5_of_body,
        :body,
        :attributes,
        :md5_of_message_attributes,
        :message_attributes)

        # @!attribute [rw] message_id
        #   A unique identifier for the message. Message IDs are considered
        #   unique across all AWS accounts for an extended period of time.
        #   @return [String]

        # @!attribute [rw] receipt_handle
        #   An identifier associated with the act of receiving the message. A
        #   new receipt handle is returned every time you receive a message.
        #   When deleting a message, you provide the last received receipt
        #   handle to delete the message.
        #   @return [String]

        # @!attribute [rw] md5_of_body
        #   An MD5 digest of the non-URL-encoded message body string.
        #   @return [String]

        # @!attribute [rw] body
        #   The message\'s contents (not URL-encoded).
        #   @return [String]

        # @!attribute [rw] attributes
        #   `SenderId`, `SentTimestamp`, `ApproximateReceiveCount`, and/or
        #   `ApproximateFirstReceiveTimestamp`. `SentTimestamp` and
        #   `ApproximateFirstReceiveTimestamp` are each returned as an integer
        #   representing the [epoch time][1] in milliseconds.
        #
        #
        #
        #   [1]: http://en.wikipedia.org/wiki/Unix_time
        #   @return [Hash<String,String>]

        # @!attribute [rw] md5_of_message_attributes
        #   An MD5 digest of the non-URL-encoded message attribute string. This
        #   can be used to verify that Amazon SQS received the message
        #   correctly. Amazon SQS first URL decodes the message before creating
        #   the MD5 digest. For information about MD5, go to
        #   [http://www.faqs.org/rfcs/rfc1321.html][1].
        #
        #
        #
        #   [1]: http://www.faqs.org/rfcs/rfc1321.html
        #   @return [String]

        # @!attribute [rw] message_attributes
        #   Each message attribute consists of a Name, Type, and Value. For more
        #   information, see [Message Attribute Items][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/SQSMessageAttributes.html#SQSMessageAttributesNTV
        #   @return [Hash<String,Types::MessageAttributeValue>]

      end

      # The user-specified message attribute value. For string data types, the
      # value attribute has the same restrictions on the content as the
      # message body. For more information, see [SendMessage][1].
      #
      # Name, type, and value must not be empty or null. In addition, the
      # message body should not be empty or null. All parts of the message
      # attribute, including name, type, and value, are included in the
      # message size restriction, which is currently 256 KB (262,144 bytes).
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/APIReference/API_SendMessage.html
      # @note When making an API call, pass MessageAttributeValue
      #   data as a hash:
      #
      #       {
      #         string_value: "String",
      #         binary_value: "data",
      #         string_list_values: ["String"],
      #         binary_list_values: ["data"],
      #         data_type: "String", # required
      #       }
      class MessageAttributeValue < Aws::Structure.new(
        :string_value,
        :binary_value,
        :string_list_values,
        :binary_list_values,
        :data_type)

        # @!attribute [rw] string_value
        #   Strings are Unicode with UTF8 binary encoding. For a list of code
        #   values, see
        #   [http://en.wikipedia.org/wiki/ASCII#ASCII\_printable\_characters][1].
        #
        #
        #
        #   [1]: http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters
        #   @return [String]

        # @!attribute [rw] binary_value
        #   Binary type attributes can store any binary data, for example,
        #   compressed data, encrypted data, or images.
        #   @return [String]

        # @!attribute [rw] string_list_values
        #   Not implemented. Reserved for future use.
        #   @return [Array<String>]

        # @!attribute [rw] binary_list_values
        #   Not implemented. Reserved for future use.
        #   @return [Array<String>]

        # @!attribute [rw] data_type
        #   Amazon SQS supports the following logical data types: String,
        #   Number, and Binary. For the Number data type, you must use
        #   StringValue.
        #
        #   You can also append custom labels. For more information, see
        #   [Message Attribute Data Types][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/SQSMessageAttributes.html#SQSMessageAttributes.DataTypes
        #   @return [String]

      end

      # @note When making an API call, pass PurgeQueueRequest
      #   data as a hash:
      #
      #       {
      #         queue_url: "String", # required
      #       }
      class PurgeQueueRequest < Aws::Structure.new(
        :queue_url)

        # @!attribute [rw] queue_url
        #   The queue URL of the queue to delete the messages from when using
        #   the `PurgeQueue` API.
        #
        #   Queue URLs are case-sensitive.
        #   @return [String]

      end

      # @note When making an API call, pass ReceiveMessageRequest
      #   data as a hash:
      #
      #       {
      #         queue_url: "String", # required
      #         attribute_names: ["Policy"], # accepts Policy, VisibilityTimeout, MaximumMessageSize, MessageRetentionPeriod, ApproximateNumberOfMessages, ApproximateNumberOfMessagesNotVisible, CreatedTimestamp, LastModifiedTimestamp, QueueArn, ApproximateNumberOfMessagesDelayed, DelaySeconds, ReceiveMessageWaitTimeSeconds, RedrivePolicy
      #         message_attribute_names: ["MessageAttributeName"],
      #         max_number_of_messages: 1,
      #         visibility_timeout: 1,
      #         wait_time_seconds: 1,
      #       }
      class ReceiveMessageRequest < Aws::Structure.new(
        :queue_url,
        :attribute_names,
        :message_attribute_names,
        :max_number_of_messages,
        :visibility_timeout,
        :wait_time_seconds)

        # @!attribute [rw] queue_url
        #   The URL of the Amazon SQS queue to take action on.
        #
        #   Queue URLs are case-sensitive.
        #   @return [String]

        # @!attribute [rw] attribute_names
        #   A list of attributes that need to be returned along with each
        #   message. These attributes include:
        #
        #   * `All` - returns all values.
        #
        #   * `ApproximateFirstReceiveTimestamp` - returns the time when the
        #     message was first received from the queue (epoch time in
        #     milliseconds).
        #
        #   * `ApproximateReceiveCount` - returns the number of times a message
        #     has been received from the queue but not deleted.
        #
        #   * `SenderId` - returns the AWS account number (or the IP address, if
        #     anonymous access is allowed) of the sender.
        #
        #   * `SentTimestamp` - returns the time when the message was sent to
        #     the queue (epoch time in milliseconds).
        #
        #   Any other valid special request parameters that are specified (such
        #   as `ApproximateNumberOfMessages`,
        #   `ApproximateNumberOfMessagesDelayed`,
        #   `ApproximateNumberOfMessagesNotVisible`, `CreatedTimestamp`,
        #   `DelaySeconds`, `LastModifiedTimestamp`, `MaximumMessageSize`,
        #   `MessageRetentionPeriod`, `Policy`, `QueueArn`,
        #   `ReceiveMessageWaitTimeSeconds`, `RedrivePolicy`, and
        #   `VisibilityTimeout`) will be ignored.
        #   @return [Array<String>]

        # @!attribute [rw] message_attribute_names
        #   The name of the message attribute, where *N* is the index. The
        #   message attribute name can contain the following characters: A-Z,
        #   a-z, 0-9, underscore (\_), hyphen (-), and period (.). The name must
        #   not start or end with a period, and it should not have successive
        #   periods. The name is case sensitive and must be unique among all
        #   attribute names for the message. The name can be up to 256
        #   characters long. The name cannot start with \"AWS.\" or \"Amazon.\"
        #   (or any variations in casing), because these prefixes are reserved
        #   for use by Amazon Web Services.
        #
        #   When using `ReceiveMessage`, you can send a list of attribute names
        #   to receive, or you can return all of the attributes by specifying
        #   \"All\" or \".\*\" in your request. You can also use \"bar.\*\" to
        #   return all message attributes starting with the \"bar\" prefix.
        #   @return [Array<String>]

        # @!attribute [rw] max_number_of_messages
        #   The maximum number of messages to return. Amazon SQS never returns
        #   more messages than this value but may return fewer. Values can be
        #   from 1 to 10. Default is 1.
        #
        #   All of the messages are not necessarily returned.
        #   @return [Integer]

        # @!attribute [rw] visibility_timeout
        #   The duration (in seconds) that the received messages are hidden from
        #   subsequent retrieve requests after being retrieved by a
        #   `ReceiveMessage` request.
        #   @return [Integer]

        # @!attribute [rw] wait_time_seconds
        #   The duration (in seconds) for which the call will wait for a message
        #   to arrive in the queue before returning. If a message is available,
        #   the call will return sooner than WaitTimeSeconds.
        #   @return [Integer]

      end

      # A list of received messages.
      class ReceiveMessageResult < Aws::Structure.new(
        :messages)

        # @!attribute [rw] messages
        #   A list of messages.
        #   @return [Array<Types::Message>]

      end

      # @note When making an API call, pass RemovePermissionRequest
      #   data as a hash:
      #
      #       {
      #         queue_url: "String", # required
      #         label: "String", # required
      #       }
      class RemovePermissionRequest < Aws::Structure.new(
        :queue_url,
        :label)

        # @!attribute [rw] queue_url
        #   The URL of the Amazon SQS queue to take action on.
        #
        #   Queue URLs are case-sensitive.
        #   @return [String]

        # @!attribute [rw] label
        #   The identification of the permission to remove. This is the label
        #   added with the AddPermission action.
        #   @return [String]

      end

      # @note When making an API call, pass SendMessageBatchRequest
      #   data as a hash:
      #
      #       {
      #         queue_url: "String", # required
      #         entries: [ # required
      #           {
      #             id: "String", # required
      #             message_body: "String", # required
      #             delay_seconds: 1,
      #             message_attributes: {
      #               "String" => {
      #                 string_value: "String",
      #                 binary_value: "data",
      #                 string_list_values: ["String"],
      #                 binary_list_values: ["data"],
      #                 data_type: "String", # required
      #               },
      #             },
      #           },
      #         ],
      #       }
      class SendMessageBatchRequest < Aws::Structure.new(
        :queue_url,
        :entries)

        # @!attribute [rw] queue_url
        #   The URL of the Amazon SQS queue to take action on.
        #
        #   Queue URLs are case-sensitive.
        #   @return [String]

        # @!attribute [rw] entries
        #   A list of SendMessageBatchRequestEntry items.
        #   @return [Array<Types::SendMessageBatchRequestEntry>]

      end

      # Contains the details of a single Amazon SQS message along with a `Id`.
      # @note When making an API call, pass SendMessageBatchRequestEntry
      #   data as a hash:
      #
      #       {
      #         id: "String", # required
      #         message_body: "String", # required
      #         delay_seconds: 1,
      #         message_attributes: {
      #           "String" => {
      #             string_value: "String",
      #             binary_value: "data",
      #             string_list_values: ["String"],
      #             binary_list_values: ["data"],
      #             data_type: "String", # required
      #           },
      #         },
      #       }
      class SendMessageBatchRequestEntry < Aws::Structure.new(
        :id,
        :message_body,
        :delay_seconds,
        :message_attributes)

        # @!attribute [rw] id
        #   An identifier for the message in this batch. This is used to
        #   communicate the result. Note that the `Id`s of a batch request need
        #   to be unique within the request.
        #   @return [String]

        # @!attribute [rw] message_body
        #   Body of the message.
        #   @return [String]

        # @!attribute [rw] delay_seconds
        #   The number of seconds for which the message has to be delayed.
        #   @return [Integer]

        # @!attribute [rw] message_attributes
        #   Each message attribute consists of a Name, Type, and Value. For more
        #   information, see [Message Attribute Items][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/SQSMessageAttributes.html#SQSMessageAttributesNTV
        #   @return [Hash<String,Types::MessageAttributeValue>]

      end

      # For each message in the batch, the response contains a
      # SendMessageBatchResultEntry tag if the message succeeds or a
      # BatchResultErrorEntry tag if the message fails.
      class SendMessageBatchResult < Aws::Structure.new(
        :successful,
        :failed)

        # @!attribute [rw] successful
        #   A list of SendMessageBatchResultEntry items.
        #   @return [Array<Types::SendMessageBatchResultEntry>]

        # @!attribute [rw] failed
        #   A list of BatchResultErrorEntry items with the error detail about
        #   each message that could not be enqueued.
        #   @return [Array<Types::BatchResultErrorEntry>]

      end

      # Encloses a message ID for successfully enqueued message of a
      # SendMessageBatch.
      class SendMessageBatchResultEntry < Aws::Structure.new(
        :id,
        :message_id,
        :md5_of_message_body,
        :md5_of_message_attributes)

        # @!attribute [rw] id
        #   An identifier for the message in this batch.
        #   @return [String]

        # @!attribute [rw] message_id
        #   An identifier for the message.
        #   @return [String]

        # @!attribute [rw] md5_of_message_body
        #   An MD5 digest of the non-URL-encoded message body string. This can
        #   be used to verify that Amazon SQS received the message correctly.
        #   Amazon SQS first URL decodes the message before creating the MD5
        #   digest. For information about MD5, go to
        #   [http://www.faqs.org/rfcs/rfc1321.html][1].
        #
        #
        #
        #   [1]: http://www.faqs.org/rfcs/rfc1321.html
        #   @return [String]

        # @!attribute [rw] md5_of_message_attributes
        #   An MD5 digest of the non-URL-encoded message attribute string. This
        #   can be used to verify that Amazon SQS received the message batch
        #   correctly. Amazon SQS first URL decodes the message before creating
        #   the MD5 digest. For information about MD5, go to
        #   [http://www.faqs.org/rfcs/rfc1321.html][1].
        #
        #
        #
        #   [1]: http://www.faqs.org/rfcs/rfc1321.html
        #   @return [String]

      end

      # @note When making an API call, pass SendMessageRequest
      #   data as a hash:
      #
      #       {
      #         queue_url: "String", # required
      #         message_body: "String", # required
      #         delay_seconds: 1,
      #         message_attributes: {
      #           "String" => {
      #             string_value: "String",
      #             binary_value: "data",
      #             string_list_values: ["String"],
      #             binary_list_values: ["data"],
      #             data_type: "String", # required
      #           },
      #         },
      #       }
      class SendMessageRequest < Aws::Structure.new(
        :queue_url,
        :message_body,
        :delay_seconds,
        :message_attributes)

        # @!attribute [rw] queue_url
        #   The URL of the Amazon SQS queue to take action on.
        #
        #   Queue URLs are case-sensitive.
        #   @return [String]

        # @!attribute [rw] message_body
        #   The message to send. String maximum 256 KB in size. For a list of
        #   allowed characters, see the preceding important note.
        #   @return [String]

        # @!attribute [rw] delay_seconds
        #   The number of seconds (0 to 900 - 15 minutes) to delay a specific
        #   message. Messages with a positive `DelaySeconds` value become
        #   available for processing after the delay time is finished. If you
        #   don\'t specify a value, the default value for the queue applies.
        #   @return [Integer]

        # @!attribute [rw] message_attributes
        #   Each message attribute consists of a Name, Type, and Value. For more
        #   information, see [Message Attribute Items][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/SQSMessageAttributes.html#SQSMessageAttributesNTV
        #   @return [Hash<String,Types::MessageAttributeValue>]

      end

      # The MD5OfMessageBody and MessageId elements.
      class SendMessageResult < Aws::Structure.new(
        :md5_of_message_body,
        :md5_of_message_attributes,
        :message_id)

        # @!attribute [rw] md5_of_message_body
        #   An MD5 digest of the non-URL-encoded message body string. This can
        #   be used to verify that Amazon SQS received the message correctly.
        #   Amazon SQS first URL decodes the message before creating the MD5
        #   digest. For information about MD5, go to
        #   [http://www.faqs.org/rfcs/rfc1321.html][1].
        #
        #
        #
        #   [1]: http://www.faqs.org/rfcs/rfc1321.html
        #   @return [String]

        # @!attribute [rw] md5_of_message_attributes
        #   An MD5 digest of the non-URL-encoded message attribute string. This
        #   can be used to verify that Amazon SQS received the message
        #   correctly. Amazon SQS first URL decodes the message before creating
        #   the MD5 digest. For information about MD5, go to
        #   [http://www.faqs.org/rfcs/rfc1321.html][1].
        #
        #
        #
        #   [1]: http://www.faqs.org/rfcs/rfc1321.html
        #   @return [String]

        # @!attribute [rw] message_id
        #   An element containing the message ID of the message sent to the
        #   queue. For more information, see [Queue and Message Identifiers][1]
        #   in the *Amazon SQS Developer Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/ImportantIdentifiers.html
        #   @return [String]

      end

      # @note When making an API call, pass SetQueueAttributesRequest
      #   data as a hash:
      #
      #       {
      #         queue_url: "String", # required
      #         attributes: { # required
      #           "Policy" => "String",
      #         },
      #       }
      class SetQueueAttributesRequest < Aws::Structure.new(
        :queue_url,
        :attributes)

        # @!attribute [rw] queue_url
        #   The URL of the Amazon SQS queue to take action on.
        #
        #   Queue URLs are case-sensitive.
        #   @return [String]

        # @!attribute [rw] attributes
        #   A map of attributes to set.
        #
        #   The following lists the names, descriptions, and values of the
        #   special request parameters the `SetQueueAttributes` action uses:
        #
        #   * `DelaySeconds` - The time in seconds that the delivery of all
        #     messages in the queue will be delayed. An integer from 0 to 900
        #     (15 minutes). The default for this attribute is 0 (zero).
        #
        #   * `MaximumMessageSize` - The limit of how many bytes a message can
        #     contain before Amazon SQS rejects it. An integer from 1024 bytes
        #     (1 KiB) up to 262144 bytes (256 KiB). The default for this
        #     attribute is 262144 (256 KiB).
        #
        #   * `MessageRetentionPeriod` - The number of seconds Amazon SQS
        #     retains a message. Integer representing seconds, from 60 (1
        #     minute) to 1209600 (14 days). The default for this attribute is
        #     345600 (4 days).
        #
        #   * `Policy` - The queue\'s policy. A valid AWS policy. For more
        #     information about policy structure, see [Overview of AWS IAM
        #     Policies][1] in the *Amazon IAM User Guide*.
        #
        #   * `ReceiveMessageWaitTimeSeconds` - The time for which a
        #     ReceiveMessage call will wait for a message to arrive. An integer
        #     from 0 to 20 (seconds). The default for this attribute is 0.
        #
        #   * `VisibilityTimeout` - The visibility timeout for the queue. An
        #     integer from 0 to 43200 (12 hours). The default for this attribute
        #     is 30. For more information about visibility timeout, see
        #     Visibility Timeout in the *Amazon SQS Developer Guide*.
        #
        #   * `RedrivePolicy` - The parameters for dead letter queue
        #     functionality of the source queue. For more information about
        #     RedrivePolicy and dead letter queues, see Using Amazon SQS Dead
        #     Letter Queues in the *Amazon SQS Developer Guide*.
        #
        #   Any other valid special request parameters that are specified (such
        #   as `ApproximateNumberOfMessages`,
        #   `ApproximateNumberOfMessagesDelayed`,
        #   `ApproximateNumberOfMessagesNotVisible`, `CreatedTimestamp`,
        #   `LastModifiedTimestamp`, and `QueueArn`) will be ignored.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/PoliciesOverview.html
        #   @return [Hash<String,String>]

      end

    end
  end
end