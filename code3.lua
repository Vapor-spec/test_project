-- NOTE: aq chven viyenebt newtonis metods pesvebis sapovnelad
-- romelic iyenebs warmoebulebis (d/dx) da aseti saxis formulas gamoviyene:
-- x_n+1 = x_n - f(x_n)/d/dx(f(x_n))
-- pasuxis sapovnelad chven gvchirdeba daaxloebit 10 iteracia
-- epsiloni aris gamoyenebuli, rodesac mnishvneli dzalian cotaa
-- tolerance aris sizustistvis
-- x0 kide sawyisi mnishvneloba, romlitac pesvs vedzebt, tu pasuxi ver iqna napovni(gamosaxa nil), es sheidzleba cudi x0-is mnishvnelobis gamo iyos
-- tu nil gamosaxa programam, didi shansia rom aqidan ert-erti iqneba gamomwvevi mizezi:
--  1. funqcia ar kvets x axis
--  2. x0 dzalian didi and dzalian patara aris


epsilon = 0.0001
tolerance = 0.0001
x0 = 1

function first_function(x)
	-- aq sheiyvane sawyisi funqcia, romlis pesvi ginda ipovo
	return (x^2)+x-1
end

function second_function(x)
	-- aq sheiyvane sawyisi funqciis warmoebuli
	return 2*x+1
end

function zero_finder(x0, first_function, second_function,tolerance, epsilon)
	for a=1,10 do
			value1 = first_function(x0)
			value2 = second_function(x0)
			if(math.abs(value2) < epsilon) then
				break
			
			else
				x1 = x0 - (value1/value2)
			end
			if(math.abs(x1-x0) <= tolerance) then
				return x1
			end
			x0 = x1
			end
		return Nil
		end


print(zero_finder(x0, first_function,second_function, tolerance, epsilon)) 