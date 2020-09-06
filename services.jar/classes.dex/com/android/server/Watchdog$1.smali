.class Lcom/android/server/Watchdog$1;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/Watchdog;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/Watchdog;

.field final synthetic val$binderProcsInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

.field final synthetic val$stack:Ljava/io/File;

.field final synthetic val$subject:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/Watchdog$1;->this$0:Lcom/android/server/Watchdog;

    iput-object p3, p0, Lcom/android/server/Watchdog$1;->val$subject:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/Watchdog$1;->val$stack:Ljava/io/File;

    iput-object p5, p0, Lcom/android/server/Watchdog$1;->val$binderProcsInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    iget-object v0, p0, Lcom/android/server/Watchdog$1;->this$0:Lcom/android/server/Watchdog;

    iget-object v1, v0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "watchdog"

    const-string/jumbo v4, "system_server"

    iget-object v7, p0, Lcom/android/server/Watchdog$1;->val$subject:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/Watchdog$1;->val$stack:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/Watchdog$1;->val$binderProcsInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/Watchdog$1;->val$binderProcsInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    iget-object v0, v0, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    :goto_16
    move-object v11, v0

    goto :goto_1a

    :cond_18
    const/4 v0, 0x0

    goto :goto_16

    :goto_1a
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/util/ArrayList;)V

    return-void
.end method
