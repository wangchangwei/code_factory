@/*
    表单中input框标签中各个参数的说明:

    hidden : input hidden框的id
    id : input框id
    name : input框名称
    readonly : readonly属性
    clickFun : 点击事件的方法名
    style : 附加的css属性
@*/
<div class="">
    <label class="control-label">${name}</label>
    @if(isNotEmpty(helpValue)){
    <span class="help-block m-b-none" >${helpValue!}</span>
    @}

    <input class="form-control" id="${id}" name="${id}"
           @if(isNotEmpty(value)){
           value="${tool.dateType(value)}"
           @}
           @if(isNotEmpty(type)){
           type="${type}"
           @}else{
           type="text"
           @}
           @if(isNotEmpty(readonly)){
           readonly="${readonly}"
           @}
           @if(isNotEmpty(clickFun)){
           onclick="${clickFun}"
           @}
           @if(isNotEmpty(style)){
           style="${style}"
           @}
           @if(isNotEmpty(disabled)){
           disabled="${disabled}"
           @}
    >


    @if(isNotEmpty(hidden)){
    <input class="form-control" type="hidden" id="${hidden}" value="${hiddenValue!}">
    @}

    @if(isNotEmpty(selectFlag)){
    <div id="${selectId}" style="display: none; position: absolute; z-index: 200;">
        <ul id="${selectTreeId}" class="ztree tree-box" style="${selectStyle!}"></ul>
    </div>
    @}
</div>
@if(isNotEmpty(underline) && underline == 'true'){
    <div class="hr-line-dashed"></div>
@}


