<!-- BEGIN: main -->
<!-- BEGIN: error -->
<div class="alert alert-danger">{ERROR}</div>
<!-- END: error -->
<form action="{FORM_ACTION}" method="post" class="confirm-reload">
	<input name="save" type="hidden" value="1" />
	<div class="table-responsive">
		<table class="table table-striped table-bordered table-hover">
			<colgroup>
				<col class="w200" />
				<col />
			</colgroup>
			<tfoot>
				<tr>
					<td colspan="2" class="text-center"><input type="submit" value="{LANG.save}" class="btn btn-primary"/></td>
				</tr>
			</tfoot>
			<tbody>
				<tr>
					<td class="text-right"> {LANG.title}</td>
					<td><input class="w500 form-control pull-left" type="text" value="{DATA.title}" name="title" id="idtitle" maxlength="255" />&nbsp;<span class="text-middle"> {GLANG.length_characters}: <span id="titlelength" class="red">0</span>. {GLANG.title_suggest_max} </span></td>
				</tr>
				<tr>
					<td class="text-right">{LANG.alias}</td>
					<td><input class="w500 form-control" type="text" value="{DATA.alias}" name="alias" id="idalias" maxlength="255" /> <em class="icon-refresh icon-large icon-pointer" onclick="get_alias('{ID}');">&nbsp;</em></td>
				</tr>
				<tr>
					<td class="text-right">{LANG.image}</td>
					<td><input class="w500 form-control pull-left" type="text" name="image" id="image" value="{DATA.image}" style="margin-right: 5px"/> <input type="button" value="Browse server" name="selectimg" class="btn btn-info"/></td>
				</tr>
				<tr>
					<td class="text-right">{LANG.imagealt}</td>
					<td><input class="w500 form-control" type="text" name="imagealt" id="imagealt" value="{DATA.imagealt}"/></td>
				</tr>
				<tr>
					<td class="text-right">{LANG.description} </td>
					<td ><textarea class="w500 form-control" id="description" name="description" cols="100" rows="5">{DATA.description}</textarea> {GLANG.length_characters}: <span id="descriptionlength" class="red">0</span>. {GLANG.description_suggest_max} </td>
				</tr>
				<tr>
					<td colspan="2" class="strong"> {LANG.bodytext}
						<div>
							{BODYTEXT}
						</div>
					</td>
				</tr>
				<tr>
					<td class="text-right">{LANG.keywords}</td>
					<td><input class="w500 form-control" type="text" value="{DATA.keywords}" name="keywords" /></td>
				</tr>
				<tr>
					<td class="text-right">{LANG.socialbutton}</td>
					<td><input type="checkbox" value="1" name="socialbutton"{SOCIALBUTTON}/> {LANG.socialbuttonnote}</td>
				</tr>
				<tr>
					<td class="text-right">{LANG.activecomm}</td>
					<td>
					<select name="activecomm" class="form-control w200">
						<!-- BEGIN: activecomm -->
						<option value="{ACTIVECOMM.key}"{ACTIVECOMM.selected}>{ACTIVECOMM.title}</option>
						<!-- END: activecomm -->
					</select></td>
				</tr>
				<tr>
					<td class="text-right">{LANG.facebookAppID}</td>
					<td><input class="w150 form-control pull-left" name="facebookappid" value="{DATA.facebookappid}" type="text"/><span class="text-middle">&nbsp; {LANG.facebookAppIDNote} </span></td>
				</tr>
				<tr>
					<td class="text-right">{LANG.layout_func} </td>
					<td>
					<select name="layout_func" class="form-control w200">
						<option value="">{LANG.layout_default}</option>
						<!-- BEGIN: layout_func -->
						<option value="{LAYOUT_FUNC.key}"{LAYOUT_FUNC.selected}>{LAYOUT_FUNC.key}</option>
						<!-- END: layout_func -->
					</select></td>
				</tr>
				<!-- BEGIN: googleplus -->
				<tr>
					<td class="text-right">{LANG.googleplus}</td>
					<td>
					<select name="gid" class="form-control w200">
						<!-- BEGIN: gid -->
						<option value="{GOOGLEPLUS.gid}"{GOOGLEPLUS.selected}>{GOOGLEPLUS.title}</option>
						<!-- END: gid -->
					</select></td>
				</tr>
				<!-- END: googleplus -->
			</tbody>
		</table>
	</div>
</form>
<script type="text/javascript">
	$("#titlelength").html($("#idtitle").val().length);
	$("#idtitle").bind('keyup paste', function() {
		$("#titlelength").html($(this).val().length);
	});

	$("#descriptionlength").html($("#description").val().length);
	$("#description").bind('keyup paste', function() {
		$("#descriptionlength").html($(this).val().length);
	});

	$("input[name=selectimg]").click(function() {
		var area = "image";
		var alt = "imagealt";
		var path = "{UPLOADS_DIR_USER}";
		var type = "image";
		nv_open_browse(script_name + "?" + nv_name_variable + "=upload&popup=1&area=" + area + "&alt=" + alt + "&path=" + path + "&type=" + type, "NVImg", 850, 420, "resizable=no,scrollbars=no,toolbar=no,location=no,status=no");
		return false;
	});
</script>
<!-- BEGIN: get_alias -->
<script type="text/javascript">
	$(document).ready(function() {
		$('#idtitle').change(function() {
			get_alias('{ID}');
		});
	});
</script>
<!-- END: get_alias -->
<!-- END: main -->