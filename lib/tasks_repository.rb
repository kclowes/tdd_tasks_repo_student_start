require 'sequel'

class TasksRepository
  def initialize(db)
    @tasks_table = db[:tasks]
  end

  def create(attributes)
    @tasks_table.insert(attributes)
  end

  def all
    @tasks_table.to_a
  end

  def find(id)
    @tasks_table.where(:id => id).to_a.first
  end

  def update(id, attributes)
    @tasks_table.where(id).update(attributes)
  end

  def delete(id)
    @tasks_table.where(id).delete
  end
end