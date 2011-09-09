﻿<cfparam name="url.category_id" default="">
	
<h2>Category Editor</h2>

<cfoutput>

	<cfif structKeyExists(params,"errors")>
		<div class="alert-message block-message error">
			<a class="close" href="##">×</a>
			<ul>
				<cfloop array="#rc.errors#" index="error">
					<li>#error#</li>
				</cfloop>
			</ul>
		</div>	
	</cfif>
	
	<form method="post" action="#linkTo('/category/save')#">
		<input type="hidden" name="category_id" value="#url.category_id#">
		<div class="clearfix">
			<label for="name">Name</label>
			<div class="input">
				<input class="xlarge" id="name" name="name" size="30" type="text" value="#category.getName()#" tabindex="1">
			</div>
		</div>
		<div class="clearfix">
			<label for="sort">Sort</label>
			<div class="input">
				<input class="xlarge" id="sort" name="sort" size="30" type="text" value="#category.getSort()#" tabindex="2">
			</div>
		</div>		
		<div class="actions">
			<a href="#linkTo('/category/list')#"><button type="reset" class="btn" tabindex="4">Cancel</button></a>&nbsp;
			<input type="submit" class="btn primary" value="Save Changes" tabindex="3">
		</div>
	</form>
		
</cfoutput>

