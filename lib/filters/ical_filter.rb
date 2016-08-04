class IcalFilter < Nanoc::Filter
  identifier :ical

  def run(_content, _params = {})
    cal = Icalendar::Calendar.new
    cal.add_event(event_for(item))
    cal.to_ical
  end
end