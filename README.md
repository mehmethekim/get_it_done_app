# Get It Done: A new approach to task management

This is a Flutter project for developing a task management system. The app allows users to manage their tasks and organize them using a new approach based on the book "Getting Things Done" by David Allen. The goal of this project is to provide a user-friendly interface for task management and productivity enhancement.

Below you can see the basic flow tof the incoming tasks. Workflow includes four parts;
* Collect
* Process
* Organize
* Review

## 1. Collect

When "stuff" comes in like emailing a client, go to shopping, or a new project, it will go to the in-basket first. In-basket is a place where you collect all the incoming tasks.

## 2. Process

After collecting all the incoming tasks, you need to process them. Processing means to decide what to do with the task. There are four options for processing a task.
* **Do it** : If it takes less than 2 minutes, do it now.
* **Delegate it** : If you are not the right person to do it, delegate it to the right person.
* **Defer it** : If it takes more than 2 minutes, defer it to a later time and put it to next actions list

## 3. Organize

After processing the tasks, you need to organize them. Organizing means to put the tasks in the right place. After processing, it should be in the correct projects folder. Then, there are four places to put the tasks.

* **Calendar** : If the task has a specific date, put it to the calendar.
* **Next actions** : If the task doesn't have a specific date, put it to the next actions list.
* **Waiting for** : If the task is waiting for someone else, put it to the waiting for list.
* **Someday/Maybe** : If the task is not important now, put it to the someday/maybe list.

## 4. Review

After organizing the tasks, you need to review them. Reviewing means to check the tasks and make sure that they are in the right place. There are four places to review the tasks.

* **Daily** : Review the tasks in the next actions list.
* **Weekly** : Review the tasks in the waiting for list.
* **Monthly** : Review the tasks in the someday/maybe list.
* **Yearly** : Review the tasks in the projects folder.


## 5. Do

After reviewing the tasks, you need to do them. Doing means to complete the tasks. Whenever you do the tasks, you should be "ticking" them and completing them. 

![GTD flow](images/gtd-clarify-flow.png)
## Roadmap

### Phase 1: Setup and Basic Functionality

- [ ] Set up the Flutter project structure and dependencies.
- [ ] Make a basic in-basket list with the ability to add, edit, and delete tasks.
- [ ] Add support for task categories and labels.

### Phase 2: Task Management and Organization

- [ ] Implement the ability to process tasks and move them to the appropriate lists.
- [ ] Add support for task prioritization and sorting.
- [ ] Create a calendar view to display tasks with due dates.
- [ ] Implement the ability to create projects and organize tasks within them.

### Phase 3: Kanban Board Functionality

- [ ] Create columns for different task statuses (e.g., "To Do," "In Progress," "Done").
- [ ] Implement drag-and-drop functionality to move tasks between columns.
- [ ] Add functionality to create new task cards within the columns.
- [ ] Enable editing and deleting tasks directly from the Kanban board.

### Phase 4: Task Details and Notifications

- [ ] Design a task details page to display more information about a specific task.
- [ ] Enable users to set reminders and receive notifications for approaching deadlines.
- [ ] Implement search functionality to quickly find tasks based on various criteria.

### Phase 5: User authentication and authorization

- [ ] Create a landing page with a brief introduction and options to log in or sign up.
- [ ] Implement user authentication and authorization.

### Phase 5: Enhancements and Polish

- [ ] Improve the app's user interface and user experience (UI/UX).
- [ ] Implement themes and customizable styling options.
- [ ] Add support for different languages and localization.
- [ ] Optimize the app's performance and memory usage.
- [ ] Conduct thorough testing to ensure stability and resolve any reported issues.



