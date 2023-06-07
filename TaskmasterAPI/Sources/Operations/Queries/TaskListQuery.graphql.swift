// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class TaskListQuery: GraphQLQuery {
  public static let operationName: String = "TaskList"
  public static let document: ApolloAPI.DocumentType = .notPersisted(
    definition: .init(
      #"""
      query TaskList {
        tasks {
          __typename
          id
          title
          description
          completed
          dueDate
        }
      }
      """#
    ))

  public init() {}

  public struct Data: TaskmasterAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { TaskmasterAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("tasks", [Task].self),
    ] }

    public var tasks: [Task] { __data["tasks"] }

    /// Task
    ///
    /// Parent Type: `Task`
    public struct Task: TaskmasterAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { TaskmasterAPI.Objects.Task }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", Int.self),
        .field("title", String.self),
        .field("description", String?.self),
        .field("completed", Bool?.self),
        .field("dueDate", TaskmasterAPI.DateTime?.self),
      ] }

      /// Task ID
      public var id: Int { __data["id"] }
      /// Task title
      public var title: String { __data["title"] }
      /// Extended description
      public var description: String? { __data["description"] }
      /// Task status
      public var completed: Bool? { __data["completed"] }
      /// Due date
      public var dueDate: TaskmasterAPI.DateTime? { __data["dueDate"] }
    }
  }
}
