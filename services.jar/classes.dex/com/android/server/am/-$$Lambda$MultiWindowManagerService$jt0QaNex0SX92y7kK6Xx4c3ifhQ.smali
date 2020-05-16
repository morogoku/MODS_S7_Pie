.class public final synthetic Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$jt0QaNex0SX92y7kK6Xx4c3ifhQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/MultiWindowManagerService;

.field private final synthetic f$1:Lcom/android/server/am/TaskRecord;

.field private final synthetic f$2:Lcom/android/server/am/TaskRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/MultiWindowManagerService;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$jt0QaNex0SX92y7kK6Xx4c3ifhQ;->f$0:Lcom/android/server/am/MultiWindowManagerService;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$jt0QaNex0SX92y7kK6Xx4c3ifhQ;->f$1:Lcom/android/server/am/TaskRecord;

    iput-object p3, p0, Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$jt0QaNex0SX92y7kK6Xx4c3ifhQ;->f$2:Lcom/android/server/am/TaskRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$jt0QaNex0SX92y7kK6Xx4c3ifhQ;->f$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$jt0QaNex0SX92y7kK6Xx4c3ifhQ;->f$1:Lcom/android/server/am/TaskRecord;

    iget-object v2, p0, Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$jt0QaNex0SX92y7kK6Xx4c3ifhQ;->f$2:Lcom/android/server/am/TaskRecord;

    invoke-static {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->lambda$swapWindowingModeLocked$4(Lcom/android/server/am/MultiWindowManagerService;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    return-void
.end method
