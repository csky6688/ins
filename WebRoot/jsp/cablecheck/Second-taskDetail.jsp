<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
  <html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<%@include file="/jsp/util/head.jsp"%>
		<title>任务详情</title>
	</head>
	<body>
		<h3>第一次检查设备信息</h3>
		<table class="easyui-datagrid"  data-options="remoteSort: false">   
		    <thead>   
		        <tr>   
		            <th data-options="field:'code',sortable:true">设备编码</th>   
		            <th data-options="field:'name'">设备名称</th>   
		            <th data-options="field:'address'">设备地址</th>
		            <th data-options="field:'area'">所属区域</th>
		            <th data-options="field:'remark'">现场规范</th>
		            <th data-options="field:'before_photo'">整改前照片</th>
		            <th data-options="field:'after_photo'">整改后照片</th>
		        </tr>   
		    </thead>   
		    <tbody>
	            <c:forEach items="${eqpList }" var="eqp">
	            	<tr>
	            		<td>${eqp.eqp_no }</td>
	            		<td>${eqp.eqp_name }</td>
	            		<td>${eqp.eqpaddress }</td>
	            		<td>${eqp.son_area_name }</td>
	            		<td>${eqp.REMARK }</td>
	            		<td>
	            			<c:forEach items="${eqp.photoList }" var="photo">
	            			<c:if test="${photo.record_type==0 or photo.record_type==4 }">
								 <a href="${photo.photo_path }" title="照片预览" class="nyroModal">
									<img src="${photo.micro_photo_path }" style="width: 50px;"/>
								 </a>
								 </c:if> 
							</c:forEach>
	            		</td>
	            		<td>
	            			<c:forEach items="${eqp.photoList }" var="photo2">
								 <c:if test="${photo2.record_type==2}">
									<a href="${photo2.photo_path }" title="照片预览" class="nyroModal">
										<img src="${photo2.micro_photo_path }" style="width: 50px;"/>
									</a> 
								</c:if> 
							</c:forEach>
	            		</td>
	            	</tr>
	            </c:forEach>
		    </tbody>   
		</table>
		<h3>二次检查设备信息</h3>
		<table class="easyui-datagrid"  data-options="remoteSort: false">   
		    <thead>   
		        <tr>   
		            <th data-options="field:'code',sortable:true">设备编码</th>   
		            <th data-options="field:'name'">设备名称</th>   
		            <th data-options="field:'address'">设备地址</th>
		            <th data-options="field:'area'">所属区域</th>
		            <th data-options="field:'remark'">现场规范</th>
		            <th data-options="field:'before_photo'">整改前照片</th>
		            <th data-options="field:'after_photo'">整改后照片</th>
		        </tr>   
		    </thead>   
		    <tbody>
	            <c:forEach items="${sdEqpList }" var="eqp">
	            	<tr>
	            		<td>${eqp.eqp_no }</td>
	            		<td>${eqp.eqp_name }</td>
	            		<td>${eqp.eqpaddress }</td>
	            		<td>${eqp.son_area_name }</td>
	            		<td>${eqp.REMARK }</td>
	            		<td>
	            			<c:forEach items="${eqp.photoList }" var="photo">
	            			<c:if test="${photo.record_type==0 or photo.record_type==4 }">
								 <a href="${photo.photo_path }" title="照片预览" class="nyroModal">
									<img src="${photo.micro_photo_path }" style="width: 50px;"/>
								 </a>
								 </c:if> 
							</c:forEach>
	            		</td>
	            		<td>
	            			<c:forEach items="${eqp.photoList }" var="photo2">
								 <c:if test="${photo2.record_type==2}">
									<a href="${photo2.photo_path }" title="照片预览" class="nyroModal">
										<img src="${photo2.micro_photo_path }" style="width: 50px;"/>
									</a> 
								</c:if> 
							</c:forEach>
	            		</td>
	            	</tr>
	            </c:forEach>
		    </tbody>   
		</table>
		<h3>第一次检查端子信息</h3>
		<table class="easyui-datagrid" data-options="remoteSort: false">
			<thead>
		        <tr>
		            <th data-options="field:'rownum'" ><strong>序号</strong></th>
					<th data-options="field:'port_no',sortable:true" ><strong>端子编码</strong></th>
					<th data-options="field:'eqp_no',sortable:true" ><strong>设备编码</strong></th>
					<th data-options="field:'eqp_name',sortable:true" ><strong>设备名称</strong></th>
					<th data-options="field:'gl_no',sortable:true" ><strong>光路编码</strong></th>
					<th data-options="field:'gl_name'" ><strong>光路名称</strong></th>
					<th data-options="field:'ish'" ><strong>是否H端子</strong></th>
					<th data-options="field:'sggh'" ><strong>施工工号</strong></th>
					<th data-options="field:'if_check'" ><strong>是否检查</strong></th>
					<th data-options="field:'create_staff'" ><strong>检查人</strong></th>
					<th data-options="field:'create_time',nowarp:false,autoSize:true" width="79px"><strong>检查时间</strong></th>
					<th data-options="field:'ischeckok'" ><strong>是否合格</strong></th>
					<th data-options="field:'descript'" ><strong>检查描述</strong></th>
					<th data-options="field:'photo'" ><strong>检查照片</strong></th>
		        </tr>   
			</thead> 
			<tbody>
				<c:if test="${not empty portList}">
					<c:forEach items="${portList }" var="port" varStatus="porStatus">
						<tr>
							<td>${porStatus.index + 1}</td>
							<td><input name="port_id" type=hidden class="" value="${port.DZID}"/>${port.PORT_NO}</td>
							<td>${port.EQP_NO}</td>
							<td>${port.EQP_NAME}</td>
							<td>${port.GLBM}</td>
							<td>${port.GLMC}</td>							
                            <td>${port.ISH}</td>
							<td>${port.SGGH}</td>
							<c:choose>
								<c:when test="${empty port.portCheckedList }">
									<td>否</td>
								</c:when>
								<c:otherwise>
									<td>是</td>
								</c:otherwise>
							</c:choose>
							<td>${port.CREATE_STAFF}</td>
							<td data-options="field:'create_time',nowarp:false,autoSize:true" width="79px">${port.CREATE_TIME}</td>	
							<td>${port.ISCHECKOK}</td>
							<td>${port.DESCRIPT}</td>
						
							<td>
							<c:forEach items="${port.portCheckedList }" var="portChecked">
								
									<c:if test="${portChecked.PHOTO_PATH != null }">
										<a href="${portChecked.PHOTO_PATH }" title="照片预览" class="nyroModal">
											<img src="${portChecked.MICRO_PHOTO_PATH }" style="width: 50px;"/>
						 				</a>
									</c:if>
									<c:if test="${portChecked.PHOTO_PATH == null }">
										暂无照片
									</c:if>
								
							</c:forEach>
							</td>
						</tr>
					</c:forEach>
				</c:if>
				<c:if test="${empty portList}">
					<tr>
						<td colspan="6">无端子信息！</td>
					</tr>
				</c:if>
			</tbody>
		</table>
		
			<h3>二次检查端子信息</h3>
		<table class="easyui-datagrid" data-options="remoteSort: false">
			<thead>
		        <tr>
		            <th data-options="field:'rownum'" ><strong>序号</strong></th>
					<th data-options="field:'port_no',sortable:true" ><strong>端子编码</strong></th>
					<th data-options="field:'eqp_no',sortable:true" ><strong>设备编码</strong></th>
					<th data-options="field:'eqp_name',sortable:true" ><strong>设备名称</strong></th>
					<th data-options="field:'gl_no',sortable:true" ><strong>光路编码</strong></th>
					<th data-options="field:'gl_name'" ><strong>光路名称</strong></th>
					<th data-options="field:'ish'" ><strong>是否H端子</strong></th>
					<th data-options="field:'sggh'" ><strong>施工工号</strong></th>
					<th data-options="field:'if_check'" ><strong>是否检查</strong></th>
					<th data-options="field:'create_staff'" ><strong>检查人</strong></th>
					<th data-options="field:'create_time',nowarp:false,autoSize:true" width="79px"><strong>检查时间</strong></th>
					<th data-options="field:'ischeckok'" ><strong>是否合格</strong></th>
					<th data-options="field:'descript'" ><strong>检查描述</strong></th>
					<th data-options="field:'photo'" ><strong>检查照片</strong></th>
		        </tr>   
			</thead> 
			<tbody>
				<c:if test="${not empty sdPortList}">
					<c:forEach items="${sdPortList }" var="port" varStatus="porStatus">
						<tr>
							<td>${porStatus.index + 1}</td>
							<td><input name="port_id" type=hidden class="" value="${port.DZID}"/>${port.DZBM}</td>
							<td>${port.SBBM}</td>
							<td>${port.SBMC}</td>
							<td>${port.GLBH}</td>
							<td>${port.GLMC}</td>							
                            <td>${port.ISH}</td>
							<td>${port.SGGH}</td>
							<c:choose>
								<c:when test="${empty port.portCheckedList }">
									<td>否</td>
								</c:when>
								<c:otherwise>
									<td>是</td>
								</c:otherwise>
							</c:choose>
							<c:forEach items="${port.portCheckedList }" var="portChecked">
								<td>${portChecked.CREATE_STAFF}</td>
								<td data-options="field:'create_time',nowarp:false,autoSize:true" width="79px">${portChecked.CREATE_TIME}</td>
								<td>${portChecked.ISCHECKOK}</td>
								<td>${portChecked.DESCRIPT}</td>
								<td>
									<c:if test="${portChecked.PHOTO_PATH != null }">
										<a href="${portChecked.PHOTO_PATH }" title="照片预览" class="nyroModal">
											<img src="${portChecked.MICRO_PHOTO_PATH }" style="width: 50px;"/>
						 				</a>
									</c:if>
									<c:if test="${portChecked.PHOTO_PATH == null }">
										暂无照片
									</c:if>
								</td>
							</c:forEach>
						</tr>
					</c:forEach>
				</c:if>
				<c:if test="${empty sdPortList}">
					<tr>
						<td colspan="6">无端子信息！</td>
					</tr>
				</c:if>
			</tbody>
		</table>
		<h3>流程详情</h3>
		<table class="easyui-datagrid" >
			<thead>
				<tr>
					<th data-options="field:'rownum'" >序号</th>
					<th data-options="field:'oper_time'" >操作时间</th>
					<th data-options="field:'oper_staff'" >操作人</th>
					<th data-options="field:'oper_remark'" >操作说明</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${not empty processList}">
					<c:forEach items="${processList }" var="process" varStatus="proStatus">
						<tr>
							<td style="width: 3%;">${proStatus.index + 1}</td>
							<td style="width: 10%;">
								<input name="port_id" type=hidden class=""/>${process.OPER_TIME}
							</td>
							<td style="width: 15%;">${process.STAFF_NAME}</td>
							<td style="width: 30%;">${process.REMARK}</td>
						</tr>
					</c:forEach>
				</c:if>
				<c:if test="${empty processList}">
					<tr>
						<td>无工单流程信息！</td>
					</tr>
				</c:if>
			</tbody>
		</table>
		<div id="intoAudit"  style="width:100%;height:200px;"></div>
		<script type="text/javascript">
			$(function(){
				$('.nyroModal').nyroModal();
			});
		</script>
	</body>
</html>
