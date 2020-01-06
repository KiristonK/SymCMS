﻿using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.Owin.Security;
using SymCMS.Models;

namespace SymCMS.ViewModels
{
    public class CommentViewModel
    {
        public CommentViewModel() { }

        public CommentViewModel(CommentModel comment)
        {
            this.CommentId = comment.CommentId;
            this.CommentText = comment.CommentText;
            this.AuthorName = comment.AuthorName;
            this.PostId = comment.PostId;
            //this.Post = new PostViewModel(comment.Post);
        }
        public int CommentId { get; set; }
        [DataType(DataType.MultilineText)]
        public string CommentText { get; set; }
        public string AuthorName { get; set; }
        public int PostId { get; set; }
        public virtual PostViewModel Post { get; set; }
    }

}