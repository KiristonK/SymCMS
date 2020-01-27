$(window).on("load", function() {
    if ($(window).width() < 1000) {
        $("p").find("img").each(function () {
                $(this).css({
                    "width": "75%",
                    "height": "auto"
                });
            }
        );
    }
});

$(document).ready(function () {
    $("textarea").autoResize();
    $("#CategoryName").val($("#categorySelector option:selected").html());
    $("#categorySelector").click(function () {
        $("#CategoryName").val($("#categorySelector option:selected").html());
    });
    $("#selectCategoryBtn").click(function () {
        var e = document.getElementById("categorySelector");
        if (e.options[e.selectedIndex].value === 0) {
            $.ajax({
                type: "POST",
                url: "/Admin/CreateCategory/",
                data: { Name: $("#CategoryName").val() },
                dataType: typeof (string)
            }).fail(alert("Fail"));
        } else {
            $("#category").val($("#CategoryName").val());
            $("#CategoryId").val($("#categorySelector option:selected").val());
            $("#categoryName").val($("#categorySelector option:selected").html());
        }
    });
});

$(".post_visibility").change(function() {
    $.ajax({
        url: "/Admin/Update/",
        method: "POST",
        data: { id: $(this).data("postid"), visible: $(this).prop("checked") }
    }).fail(function() {
        $(this).prop("checked", false);
    });
});


$(".comment_switch").change(function() {
    var id, url, data;
    if ($(this).data("postid") == undefined) {
        id = $(this).data("pageid");
        url = "/Admin/UpdateCommentingPage/";
        data = { PageId: id, CommentsEnabled: $(this).prop("checked") };
    } else {
        url = "/Admin/UpdateCommentingPost/";
        id = $(this).data("postid");
        data = { id: id, CommentsEnabled: $(this).prop("checked") };
    }
    $.ajax({
        url: url,
        method: "POST",
        data: data,
    }).fail(function() {
        $(this).prop("checked", false);
    });
    setTimeout("location.reload(true);", 1000);
});


$(document).on("click",
    ".browse",
    function () {
        var file = $(this).parents().find(".file");
        file.trigger("click");
    });

$(document).on("change",
    'input[type="file"]',
    function (e) {
        if (e.target.files[0] == undefined) {
            return;
        }
        var fileName = e.target.files[0].name;
        var idEl = $(this).attr("id");
        var idParent = $(this).attr("name");
        var reader;
        switch (idEl) {
            case "HeadImage":
                $("#file").val(fileName);

                reader = new FileReader();
                reader.onload = function (e) {
                    $("#HeadImageBase64").val(reader.result);
                    $("#previewImage").removeClass("d-none");
                    document.getElementById("previewImage").src = e.target.result;

                };
                reader.readAsDataURL(this.files[0]);
                break;
            case "carouselImages" + idParent:
                $("#fileNameCarousel" + idParent).val(fileName);
                reader = new FileReader();
                reader.onload = function (e) {
                    addImageCarousel(e.target.result, idParent);
                };
                reader.readAsDataURL(this.files[0]);
                break;
            case "galleryImages" + idParent:
                $("#fileNameGallery" + $(this).attr("name")).val(fileName);
                reader = new FileReader();
                reader.onload = function (e) {
                    document.getElementById(idParent.toString()).innerHTML +=
                        '<div class="col-lg-3 col-md-4 col-xs-6 thumb galleryItem"><img src="' +
                        e.target.result +
                        '"style="width: 100%; height: 100%;" class="zoom img-fluid " alt=""></a></div>';
                };
                reader.readAsDataURL(this.files[0]);
                return;
            default:
                alert("Error has occured :(");
                break;
        }
    });

function createCategory() {
    var e = document.getElementById("selectCategory");
    if (e.options[e.selectedIndex].value == 0) {
        // Get the modal
        var modal = document.getElementById("myModal");

        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("close")[0];


        modal.style.display = "block";


        // When the user clicks on <span> (x), close the modal
        span.onclick = function() {
            modal.style.display = "none";
        };

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        };
        //var catName = prompt("Please enter category name: ", "My Category");
        //if (catName == null || catName == "") {
        //    //<div class="alert alert-danger" role="alert">
        //    //    Category name can not be empty !
        //    //</div>
        //    alert("Category name can not be empty !");
        //}
        //else {
        //    var option = document.createElement("option");
        //    option.text = catName;
        //    var categories = paramview;
        //    e.add(option);
        //    e.selectedIndex = 0;
        //}
    } else {

    }

}


(function($) {

    $.fn.autoResize = function(options) {

        // Just some abstracted details,
        // to make plugin users happy:
        var settings = $.extend({
                onResize: function() {},
                animate: true,
                animateDuration: 150,
                animateCallback: function() {},
                extraSpace: 20,
                limit: 1000
            },
            options);

        // Only textarea's auto-resize:
        this.filter("textarea").each(function() {

            // Get rid of scrollbars and disable WebKit resizing:
            var textarea = $(this).css({ resize: "none", 'overflow-y': "hidden" }),

                // Cache original height, for use later:
                origHeight = textarea.height(),

                // Need clone of textarea, hidden off screen:
                clone = (function() {

                    // Properties which may effect space taken up by chracters:
                    var props = ["height", "width", "lineHeight", "textDecoration", "letterSpacing"],
                        propOb = {};

                    // Create object of styles to apply:
                    $.each(props,
                        function(i, prop) {
                            propOb[prop] = textarea.css(prop);
                        });

                    // Clone the actual textarea removing unique properties
                    // and insert before original textarea:
                    return textarea.clone().removeAttr("id").removeAttr("name").css({
                        position: "absolute",
                        top: 0,
                        left: -9999
                    }).css(propOb).attr("tabIndex", "-1").insertBefore(textarea);

                })(),
                lastScrollTop = null,
                updateSize = function() {

                    // Prepare the clone:
                    clone.height(0).val($(this).val()).scrollTop(10000);

                    // Find the height of text:
                    var scrollTop = Math.max(clone.scrollTop(), origHeight) + settings.extraSpace,
                        toChange = $(this).add(clone);

                    // Don't do anything if scrollTip hasen't changed:
                    if (lastScrollTop === scrollTop) {
                        return;
                    }
                    lastScrollTop = scrollTop;

                    // Check for limit:
                    if (scrollTop >= settings.limit) {
                        $(this).css("overflow-y", "");
                        return;
                    }
                    // Fire off callback:
                    settings.onResize.call(this);

                    // Either animate or directly apply height:
                    settings.animate && textarea.css("display") === "block"
                        ? toChange.stop().animate({ height: scrollTop },
                            settings.animateDuration,
                            settings.animateCallback)
                        : toChange.height(scrollTop);
                };

            // Bind namespaced handlers to appropriate events:
            textarea
                .unbind(".dynSiz")
                .bind("keyup.dynSiz", updateSize)
                .bind("keydown.dynSiz", updateSize)
                .bind("change.dynSiz", updateSize);

        });

        // Chain:
        return this;

    };


})(jQuery);

function GalleryAdd(galleryId) {
    var modules = document.getElementById("modules");
    var strId = galleryId.toString();
    var removeBtn = '<div class="adminControl"><input type="button" class="btn btn-danger" onclick="$(\'#' +
        strId +
        "').remove(); $('#addImageGalleryBtn"+strId+'\').remove(); $(this).remove()" value="Remove gallery"/></div>';
    modules.insertAdjacentHTML("beforeend",
        '<div class="row gallery" id="' +
        strId +
        '"></div>' +
        '<div class="col-md-4 adminControl" id="addImageGalleryBtn'+strId+'">' +
        '<div id="msg"></div>' +
        '<input type="file" id="galleryImages' +
        strId +
        '" name="' +
        strId +
        '" hidden class="galleryImage" accept="image/*">' +
        '<div class="input-group my-3">' +
        '<input type="text" class="form-control" disabled placeholder="Click add image to upload image" id="fileNameGallery' +
        strId +
        '">' +
        '<div class="input-group-append">' +
        '<input type="button" id="' +
        strId +
        '" class="btn btn-primary addImageGallery" onclick="$(this).parents().find(\'#galleryImages' +
        strId +
        '\').trigger(\'click\');" value="Add image" />' +
        "</div>" +
        "</div>" +
        "</div>" + removeBtn);
}

function GalleryAdminControls(galleryId) {
    var strId = galleryId.toString();
    var removeBtn =
        '<div class="adminControl"><input type="button" class="btn btn-danger" onclick="$(\'#' +
            strId +
            '\').remove(); $(\'#addImageGalleryBtn\').remove(); $(this).remove()" value="Remove gallery"/></div>';
    var html = '<div class="col-md-4 adminControl" id="addImageGalleryBtn">' +
        '<div id="msg"></div>' +
        '<input type="file" id="galleryImages' +
        strId +
        '" name="' +
        strId +
        '" hidden class="galleryImage" accept="image/*">' +
        '<div class="input-group my-3">' +
        '<input type="text" class="form-control" disabled placeholder="Click add image to upload image" id="fileNameGallery' +
        strId +
        '">' +
        '<div class="input-group-append">' +
        '<input type="button" id="' +
        strId +
        '" class="btn btn-primary addImageGallery" onclick="$(this).parents().find(\'#galleryImages' +
        strId +
        '\').trigger(\'click\');" value="Add image" />' +
        "</div>" +
        "</div>" +
        "</div>" +
        removeBtn;
    return html;
}

function EditorAdd(editorId) {
    var modules = document.getElementById("modules");
    var removeBtn =
        '<div class="adminControl"><input type="button" class="btn btn-danger" onclick="CKEDITOR.instances[\'additionalEditor' +
            editorId +
            "'].destroy(); $('#editor" +
            editorId +
            '\').remove(); $(this).remove()" value="Remove editor"/></div>';
    modules.insertAdjacentHTML("beforeend",
        '<div class="mt-2 mb-2 editor" id="editor' +
        editorId +
        '"><textarea name="additionalEditor' +
        editorId +
        '"></textarea></div>' +
        removeBtn);
    CKEDITOR.replace("additionalEditor" + editorId);
}

function CarouselAdd(carouselIdString) {
    var removeBtn =
        '<div class="adminControl"><input type="button" class="btn btn-danger" onclick="$(\'#carousel' +
        carouselIdString + "').remove(); $('#addImageCarBtn" + carouselIdString + '\').remove(); $(this).remove()" value="Remove carousel"/></div>';
    var modules = document.getElementById("modules");
    modules.insertAdjacentHTML("beforeend",
        '<div id="carousel' + carouselIdString + '" class="carousel slide mt-2 mb-2 additionalCarousel' + carouselIdString +
        '" style="background: darkgray" data-ride="carousel">' +
        '<div class="carousel-inner" style="max-height: 700px;" id="carouselImages' + carouselIdString + '"></div>' +
        '<a class="carousel-control-prev" href="#carousel' + carouselIdString + '" role="button" data-slide="prev">' + '<span class="carousel-control-prev-icon" aria-hidden="true"></span>' +
        '<span class="sr-only">Previous</span></a><a class="carousel-control-next" href="#carousel' + carouselIdString +
        '" role="button" data-slide="next"><span class="carousel-control-next-icon" aria-hidden="true"></span>' + '<span class="sr-only">Next</span>' +
        '</a></div><div class="col-md-4 adminControl" id="addImageCarBtn' + carouselIdString + '">' +
        '<div id="msg"></div><input type="file" id="carouselImages' + carouselIdString + '" name="' + carouselIdString + '" hidden class="carouselImages' + carouselIdString +
        '" accept="image/*"><div class="input-group my-3">' + '<input type="text" class="form-control" disabled placeholder="Click add image to upload image" id="fileNameCarousel' +
        carouselIdString + '"><div class="input-group-append">' + '<input type="button" class="btn btn-primary" onclick="$(this).parents().find(\'#carouselImages' +
        carouselIdString + '\').trigger(\'click\');" value="Add image" /></div></div></div>' + removeBtn);
}

function addImageCarousel(imgSource, id) {
    var $carousel = $(".additionalCarousel" + id.toString());
    var active;
    if ($carousel.find(".active").index() < 0)
        active = $carousel.find(".item").length - 1;
    else
        active = 1;
    if (active <= 0) {
        document.getElementById("carouselImages" + id.toString()).innerHTML =
            '<div class="carousel-item active">' +
            '<img class="d-block w-100" src="' +
            imgSource +
            '" alt="">' +
            "</div>";
    } else {
        document.getElementById("carouselImages" + id.toString()).innerHTML += '<div class="carousel-item">' +
            '<img class="d-block w-100" src="' +
            imgSource +
            '" alt="">' +
            "</div>";
    }

}

function CarouselAdminControls(carouselId) {
    var carouselIdString = carouselId.toString();
    var removeBtn =
        '<div class="adminControl"><input type="button" class="btn btn-danger" onclick="$(\'#carousel' +
            carouselIdString +
            "').remove(); $('#addImageCarBtn" +
            carouselIdString +
            '\').remove(); $(this).remove()" value="Remove carousel"/></div>';
    var html = '<div class="col-md-4 adminControl" id="addImageCarBtn' +
        carouselIdString +
        '">' +
        '<div id="msg"></div>' +
        '<input type="file" id="carouselImages' +
        carouselIdString +
        '" name="' +
        carouselIdString +
        '" hidden class="carouselImages' +
        carouselIdString +
        '" accept="image/*">' +
        '<div class="input-group my-3">' +
        '<input type="text" class="form-control" disabled placeholder="Click add image to upload image" id="fileNameCarousel' +
        carouselIdString +
        '">' +
        '<div class="input-group-append">' +
        '<input type="button" class="btn btn-primary" onclick="$(this).parents().find(\'#carouselImages' +
        carouselIdString +
        '\').trigger(\'click\');" value="Add image" />' +
        "</div>" +
        "</div>" +
        "</div>" +
        removeBtn;
    return html;
}