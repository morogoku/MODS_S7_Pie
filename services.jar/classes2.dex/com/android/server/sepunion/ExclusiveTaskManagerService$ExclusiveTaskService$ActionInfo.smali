.class Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;
.super Ljava/lang/Object;
.source "ExclusiveTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionInfo"
.end annotation


# instance fields
.field public mAttribute:Ljava/lang/String;

.field public mDBType:I

.field public mNeedToNotify:Z

.field final synthetic this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;


# direct methods
.method private constructor <init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;Lcom/android/server/sepunion/ExclusiveTaskManagerService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ActionInfo;-><init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)V

    return-void
.end method
