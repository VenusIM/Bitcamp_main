$(document).ready(function(){

    eventInit();

    fncGetList = (currentPage)=>{
        $("#currentPage").val(currentPage);
        $(".notice-search").attr("method", "post").submit();
    }

})// end jQurey

function eventInit() {

    $(".notice-search-btn").on("click", ()=>{
        $(".notice-search").attr("method", "post");
    })
    
    $(".notice-list ul li").on("click" , (e)=>{
        const noticeNo = $(e.currentTarget).find('.notice-no').text();
        // console.log(noticeNo);
        self.location ="/servicecenter/getNotice?noticeNo="+noticeNo;
    })
  
    $(".notice-back").on('click', ()=>{
        self.location ="/servicecenter/listNotice";
    })
    $("#notice-delete-btn").on("click",()=>{
        const noticeNo = $(".getNotice").data("noticeno");
        self.location ="/servicecenter/deleteNotice?noticeNo="+noticeNo;
    })

    $("#n-files").bind('change', function() {
        selectFile(this.files);
    });
    
    $(".notice-btn").on("click" , (e)=>{
        const no = $(".notice-btn").data("no");
        const tagContent = $(".note-editable").html();
        const file = $("#n-files").val();

        $("#n-content").val(tagContent);
        
        switch (no) {
            case 1:
                console.log($("#n-content").val());
                Swal.fire({
                    title: '등록 하시겠습니까?',
                    // text: "You won't be able to revert this!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: '등록',
                    cancelButtonText: '취소'
                }).then((result) => {
                    if (result.isConfirmed) {
                        Swal.fire(
                        '등록이 완료되었습니다.',
                        '공지사항 목록으로 전환됩니다.',
                        'success'
                        ).then(()=>{
                            console.log("넘어간닷!")
                            $("#notice-form").attr("action" , "/servicecenter/addNotice").attr("method" , "post").attr("enctype","multipart/form-data").submit();
                        })
                    }else{
                        return;
                    }
                })
                break;
            case 2:

                break;
            default:
                alert("뭘누른거임?")
                break;
        }
    })

    
}


