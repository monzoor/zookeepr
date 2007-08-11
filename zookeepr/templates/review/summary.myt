<h2>Reviews Summary</h2>

% review_summary = {}
% for r in c.review_collection:
%     if r.reviewer in review_summary:
%         review_summary[r.reviewer]['num_reviews'] += 1
%         review_summary[r.reviewer]['total_score'] += r.score
%     else:
%         review_summary[r.reviewer] = {}
%         review_summary[r.reviewer]['num_reviews'] = 1
%         review_summary[r.reviewer]['total_score'] = r.score
% # end

<table>
<tr>
<th>Reviewer</th>
<th>Number of Reviews</th>
<th>Avg Score</th>
</tr>
% for reviewer in review_summary:
<tr class="<% h.cycle('even', 'odd') %>">
<td>
<% reviewer.firstname %>
<% reviewer.lastname %>
</td>

<td>
<% review_summary[reviewer]['num_reviews'] |h %>
</td>

<td>
<% review_summary[reviewer]['total_score']/review_summary[reviewer]['num_reviews'] |h %>
</td>

% #endfor
</table>

<%method title>
Review Summary - <& PARENT:title &>
</%method>