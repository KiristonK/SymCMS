﻿using System.Collections.Generic;
using SymCMS.ViewModels;

namespace SymCMS.Services.Interfaces
{
    public interface IPageService
    {
        bool EditPage(PageViewModels pageViewModels);
        IEnumerable<PageViewModels> GetAllPages();
        PageViewModels GetPage(int? id);
        void AddPage(PageViewModels pageViewModels);
        void DeletePage(int id);
        void Dispose();
    }
}