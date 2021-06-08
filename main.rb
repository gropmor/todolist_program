require "./todo"
require "./task"

task1 = { title: "洗濯", content: "7時半までに干し終える" }
task2 = { title: "仕事", content: "9時〜18時" }
task3 = { title: "買物", content: "卵, ヨーグルト" }

todo = ToDo.new
todo.add(task1)
todo.add(task2)
todo.display
todo.delete(id: 1)
todo.add(task3)
todo.delete(id: 1)
todo.delete(id: 3)
# todo.delete(id: 2)
todo.display
