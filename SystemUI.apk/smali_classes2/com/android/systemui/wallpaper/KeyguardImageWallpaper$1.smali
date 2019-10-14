.class Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;
.super Landroid/os/AsyncTask;
.source "KeyguardImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->updateWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;",
        ">;"
    }
.end annotation


# instance fields
.field final seq:I

.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

.field final synthetic val$currentUser:I

.field final synthetic val$selectedUser:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;ILandroid/os/UserHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    iput p2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->val$currentUser:I

    iput-object p3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->val$selectedUser:Landroid/os/UserHandle;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iget-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {p2}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$004(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->seq:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->val$currentUser:I

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->val$selectedUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->loadBitmap(ILandroid/os/UserHandle;)Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->doInBackground([Ljava/lang/Void;)Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->seq:I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$000(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)I

    move-result v1

    if-eq v0, v1, :cond_1

    const-string v0, "KeyguardImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return onPostExecute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->seq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$000(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v0, p1, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;->success:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$100(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    const/16 v2, 0xc

    invoke-static {v0, v2}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$202(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;I)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$400(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$302(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    const-string v0, "KeyguardImageWallpaper"

    const-string v2, "set matrix to old"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$600(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$500(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_2
    const-string v0, "KeyguardImageWallpaper"

    const-string v2, "switch to new wallpaper immediately, not in interactive mode"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$300(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$300(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$302(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    iget-object v2, p1, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v2}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$402(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$700(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$800(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$1000(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$1100(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$300(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$300(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$302(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_5
    const-string v0, "KeyguardImageWallpaper"

    const-string v1, "updateWallpaper() DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->access$1200(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "KeyguardImageWallpaper"

    const-string v2, "updateWallpaper() no last command, send WAKE_LOCK instead"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    const-string v2, "WAKE_LOCK"

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->onCommand(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->onPostExecute(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;)V

    return-void
.end method
