.class Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver$1;
.super Landroid/os/AsyncTask;
.source "ExclusiveTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->onChange(ZLandroid/net/Uri;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver$1;->this$2:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    const-wide/16 v0, 0x1f4

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.accessibility.UPDATE_MY_A11Y_NOTI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver$1;->this$2:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;

    iget-object v1, v1, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v0

    :goto_21
    const/4 v0, 0x0

    return-object v0
.end method
