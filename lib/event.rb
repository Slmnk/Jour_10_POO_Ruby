require 'pry'
require 'time'

class Event

  attr_accessor :start_date, :duration, :title, :attendees  # time, integer, et string
  @@all_events = 0

  def initialize(start_date, duration, title, attendees)
    @start_date = Time.parse(start_date)
    @duration = duration.to_i
    @title = title
    @attendees = attendees
  end

  def postpone_24h
    @start_date = start_date + 24 * 60 * 60
  end

  def end_date
    end_date = start_date + duration
  end

  def is_past?
    start_date < Time.now
  end

  def is_future?          # =>                              !is_past?
    start_date > Time.now # on aurait aussi pu utiliser         start_date < Time.now
  end                     # =>                              end

  def is_soon?
    start_date < Time.now + 30 * 60
  end

  def to_s
    puts ">Titre : #{@title}"
    puts ">Date de début : #{@start_date}"
    puts ">Durée : #{@duration/60} minutes."
    puts ">Invités : #{@attendees.join(" ")}"
  end

end
