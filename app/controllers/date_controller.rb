# encoding: utf-8

class DateController < ApplicationController

  def index

    @date = Date.today

    ## puts "day:   #{@date.day}"
    ## puts "month: #{@date.month}"
    ## puts "year:  #{@date.year}"
    ## puts "yday:  #{d.yday}"

    @date_monthname = Date::MONTHNAMES[@date.month]  ## e.g. January
    @date_dayname   = Date::DAYNAMES[@date.wday]  ## e.g. Sunday, Monday
    @date_week      = @date.strftime('%W').to_i+1 ## e.g. 1,2,3,etc.


    ### todo: use self.rnd from activerecord-utils
    ## get random beer (of the day) for now

    rnd_offset = rand( Beer.count ) ## NB: call "global" std lib rand
    @beer = Beer.offset( rnd_offset ).limit( 1 ).first

    @beer_facts = beer_facts( @beer )
  end

  def beer_facts( beer )
    buf = ''
    facts = []
    facts << "#{beer.abv}%" if beer.abv.present?
    facts << "#{beer.og}°" if beer.og.present?
    buf << "(#{facts.join(', ')})" if facts.size > 0
    buf
  end

end
