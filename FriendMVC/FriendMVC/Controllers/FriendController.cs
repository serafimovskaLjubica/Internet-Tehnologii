using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using FriendMVC.Models;

namespace FriendMVC.Controllers
{
    public class Friend : Controller
    {
        private FriendData fdDB = new FriendData();

        // GET Friend

        public ActionResult Index()
        {
            return View(fdDB.Friends.ToList());
        }

        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }

            FriendModel friend = fdDB.Friends.Find(id);

            if (friend == null)
            {
                return HttpNotFound();
            }

            return View(friend);
        }

        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id, Ime, MestoZiveenje")] FriendModel fm)
        {
            if (ModelState.IsValid)
            {
                fdDB.Friends.Add(fm);
                fdDB.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(fm);
        }

        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }

            FriendModel f = fdDB.Friends.Find(id);

            if (f == null)
            {
                return HttpNotFound();
            }

            return View(f);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Name,Place")] FriendModel fm)
        {
            if (ModelState.IsValid)
            {
                fdDB.Entry(fm).State = EntityState.Modified;
                fdDB.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(fm);
        }

        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            FriendModel f = fdDB.Friends.Find(id);

            if (f == null)
            {
                return HttpNotFound();
            }

            return View(f);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            FriendModel friend = fdDB.Friends.Find(id);

            fdDB.Friends.Remove(friend);
            fdDB.SaveChanges();

            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                fdDB.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}