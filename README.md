# **To-Do List Smart Contract**

This is a simple **To-Do List** application built on the Ethereum blockchain using Solidity. It allows users to add tasks and mark them as completed. All actions are logged using events for transparency and tracking.

---

## **Features**
1. **Add a Task**: Users can add a new task with a description.
2. **Mark Task as Completed**: Users can mark a task as completed.
3. **View Tasks**: Users can view the total number of tasks and their details.
4. **Events**: All actions (adding and completing tasks) are logged using events.

---

## **Smart Contract Details**

### **Contract: `ToDoList`**
- **Tasks**: Tasks are stored in an array of `Task` structs.
- **Events**:
  - `TastAdded`: Emitted when a new task is added.
  - `TaskCompleted`: Emitted when a task is marked as completed.

### **Task Struct**
Each task has the following properties:
- `id`: Unique identifier for the task.
- `description`: Description of the task.
- `isCompleted`: Boolean indicating whether the task is completed.

---

## **Functions**

### **1. `addTask`**
- **Description**: Adds a new task to the to-do list.
- **Parameters**:
  - `_description`: A string describing the task.
- **Event Emitted**: `TastAdded`

### **2. `completedTask`**
- **Description**: Marks a task as completed.
- **Parameters**:
  - `_taskId`: The ID of the task to mark as completed.
- **Requirements**:
  - The task must exist.
  - The task must not already be completed.
- **Event Emitted**: `TaskCompleted`

### **3. `getTaskCount`**
- **Description**: Returns the total number of tasks in the to-do list.
- **Returns**: `uint` representing the number of tasks.

---

## **How to Use**

### **1. Deploy the Contract**
- Compile and deploy the `ToDoList` contract using [Remix IDE](https://remix.ethereum.org/) or any Ethereum development environment.

### **2. Add Tasks**
- Call the `addTask` function with a task description (e.g., `"Buy groceries"`).
- The `TastAdded` event will be emitted, logging the task ID and description.

### **3. Complete Tasks**
- Call the `completedTask` function with the task ID (e.g., `0` for the first task).
- The `TaskCompleted` event will be emitted, logging the task ID.

### **4. View Tasks**
- Use the `getTaskCount` function to check the total number of tasks.
- Use the `tasks` array (public variable) to view individual tasks.

---

## **Example Workflow**

1. Add a task:
   ```solidity
   addTask("Buy groceries");
   ```
   - Event: `TastAdded(0, "Buy groceries")`

2. Add another task:
   ```solidity
   addTask("Finish homework");
   ```
   - Event: `TastAdded(1, "Finish homework")`

3. Complete the first task:
   ```solidity
   completedTask(0);
   ```
   - Event: `TaskCompleted(0)`

4. Check the total number of tasks:
   ```solidity
   getTaskCount(); // Returns 2
   ```

---

## **Events**
- **`TastAdded`**:
  - Logs the task ID and description when a new task is added.
- **`TaskCompleted`**:
  - Logs the task ID when a task is marked as completed.

---

## **Technologies Used**
- **Solidity**: For writing the smart contract.
- **Ethereum**: For deploying the contract on the blockchain.
- **Remix IDE**: For compiling, deploying, and testing the contract.

---

## **License**
This project is licensed under the **GPL-3.0 License**. See the [SPDX-License-Identifier](https://spdx.org/licenses/GPL-3.0.html) for more details.
