class ToDo
  def initialize
    @tasks = []
  end

  def add(task_params)
    task = Task.new(task_params)
    @tasks << task
    puts "【追加】 #{task.info}"
  end

  def display
    puts "*=*=*=*=*=*=*=*=* task *=*=*=*=*=*=*=*=*"
    puts @tasks.any? ? @tasks.map { |task| task.info } : "タスクはありません。"
    puts "*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*"
  end

  def delete(id:)
    task = @tasks.find { |task| task.id == id }
    if task
      @tasks.delete(task)
      puts "【削除】 #{task.info}"
    else
      puts "【！】 該当idのタスクはありません。"
    end
  end
end
