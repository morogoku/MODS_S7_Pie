.class Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;
.super Ljava/lang/Object;
.source "ExclusiveTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskInfo"
.end annotation


# instance fields
.field public mFrom:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mHostId:I

.field public mState:I

.field public mValue:I

.field final synthetic this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;


# direct methods
.method private constructor <init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;Lcom/android/server/sepunion/ExclusiveTaskManagerService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$TaskInfo;-><init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)V

    return-void
.end method
