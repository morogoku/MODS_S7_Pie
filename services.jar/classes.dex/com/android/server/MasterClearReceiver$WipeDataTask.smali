.class Lcom/android/server/MasterClearReceiver$WipeDataTask;
.super Landroid/os/AsyncTask;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MasterClearReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WipeDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mChainedTask:Ljava/lang/Thread;

.field private final mContext:Landroid/content/Context;

.field private final mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/android/server/MasterClearReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;Ljava/lang/Thread;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->this$0:Lcom/android/server/MasterClearReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mChainedTask:Ljava/lang/Thread;

    const-string p1, "MasterClear"

    const-string/jumbo v0, "mProgressDialog object will create"

    invoke-static {p1, v0}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string p1, "MasterClear"

    const-string/jumbo v0, "mProgressDialog object created"

    invoke-static {p1, v0}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/MasterClearReceiver$WipeDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    const-string v0, "MasterClear"

    const-string v1, "Wiping adoptable disks"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->this$0:Lcom/android/server/MasterClearReceiver;

    # getter for: Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z
    invoke-static {v0}, Lcom/android/server/MasterClearReceiver;->access$300(Lcom/android/server/MasterClearReceiver;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->wipeAdoptableDisks()V

    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/MasterClearReceiver$WipeDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->this$0:Lcom/android/server/MasterClearReceiver;

    # getter for: Lcom/android/server/MasterClearReceiver;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/server/MasterClearReceiver;->access$400(Lcom/android/server/MasterClearReceiver;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const-string v0, "MasterClear"

    const-string/jumbo v1, "mProgressDialog object will dismiss"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const-string v0, "MasterClear"

    const-string/jumbo v1, "mProgressDialog object dismissed"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mChainedTask:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onPreExecute()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mContext:Landroid/content/Context;

    const v2, 0x1040896

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const-string v0, "MasterClear"

    const-string/jumbo v1, "mProgressDialog will show"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeDataTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    const-string v0, "MasterClear"

    const-string/jumbo v1, "mProgressDialog showed"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
