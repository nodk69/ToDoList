// SPDX-License-Identifier: GPL-3.0

pragma solidity  ^0.8.0;

struct Task{
    //first let me structured the task structer
    uint id;
    string description;
    bool isCompleted;
}

contract ToDoList{
    
    //Array to store tasks
    Task[] public tasks;

    //Events here
    event TastAdded(uint indexed  id,string description);
    event TaskCompleted(uint indexed id);

    //Add new task
    function addTask(string memory _description) public {
        uint taskId= tasks.length;
        tasks.push(Task(taskId, _description,false));
        emit TastAdded(taskId, _description);
    }

    //Mark as task completed
    function completedTask(uint _taskId) public {
        require(_taskId<tasks.length,"Task does not exist");

        Task storage task=tasks[_taskId];
        require(!task.isCompleted,"Task is already completed");
        task.isCompleted=true;
        emit TaskCompleted(_taskId);
    }

    //Get all the tasks
    function getTaskCount() public view returns (uint) {
        return tasks.length;
    }
}