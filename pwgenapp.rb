$:.unshift(File.join(File.dirname(__FILE__),'lib'))
require 'rubygems'
require 'sinatra'
require 'pwgen'
require 'fibseq'

get '/' do
	erb :new
end


post '/' do
	num = params[:pwnum]
	len = params[:pwlen]
	fibits = params[:fibits]	
	if num != "" && len != ""
		@pwlist = Pwgen.new(num,len)
		erb :showpwgen
	else if fibits != ""
		fibits = fibits.to_i
		@fib = FibSeq.new(fibits)
		erb :showfibseq	
	else
		redirect '/'
	end
end
end
