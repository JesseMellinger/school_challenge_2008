class School
  attr_reader :start_time, :hours_in_school_day, :student_names

  def initialize(start_time, num_of_hours)
    @start_time = start_time
    @hours_in_school_day = num_of_hours
    @student_names = []
  end

  def add_student_name(student)
    @student_names.push(student)
  end

  def end_time
    "#{@start_time[0].to_i + @hours_in_school_day}:00"
  end

  def is_full_time?
    @hours_in_school_day > 4
  end

  def standard_student_names
    capitalized_names = []
    @student_names.each do |name|
      capitalized_names << name.capitalize
    end
    capitalized_names
  end

  def convert_end_time_to_clock_time
    if end_time.partition(":")[0].to_i > 12
      "#{end_time.sub(':00', '').to_i - 12}:00"
    else
      end_time
    end
  end

end
