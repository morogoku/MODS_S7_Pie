.class Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;
.super Ljava/lang/Object;
.source "ActionDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/friends/action/ActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Task"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Task"


# instance fields
.field private final action:Lcom/android/server/sepunion/friends/action/ActionExecutable;

.field private final args:Landroid/os/Bundle;

.field private final extra:I

.field private final flag:I

.field private final taskId:I


# direct methods
.method private constructor <init>(ILcom/android/server/sepunion/friends/action/ActionExecutable;Landroid/os/Bundle;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->taskId:I

    iput-object p2, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->action:Lcom/android/server/sepunion/friends/action/ActionExecutable;

    iput-object p3, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->args:Landroid/os/Bundle;

    iput p4, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->flag:I

    iput p5, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->extra:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/android/server/sepunion/friends/action/ActionExecutable;Landroid/os/Bundle;IILcom/android/server/sepunion/friends/action/ActionDispatcher$1;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;-><init>(ILcom/android/server/sepunion/friends/action/ActionExecutable;Landroid/os/Bundle;II)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->action:Lcom/android/server/sepunion/friends/action/ActionExecutable;

    if-eqz v0, :cond_44

    const-string v0, "Task"

    const-string v1, "Task[%d] begins - action[0x%x]"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->extra:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->action:Lcom/android/server/sepunion/friends/action/ActionExecutable;

    iget-object v1, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->args:Landroid/os/Bundle;

    iget v3, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->flag:I

    iget v4, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->extra:I

    invoke-interface {v0, v1, v3, v4}, Lcom/android/server/sepunion/friends/action/ActionExecutable;->execute(Landroid/os/Bundle;II)Landroid/os/Bundle;

    const-string v0, "Task"

    const-string v1, "Task[%d] ends - action[0x%x]"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->extra:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_44} :catch_45

    :cond_44
    goto :goto_49

    :catch_45
    move-exception v0

    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :goto_49
    return-void
.end method
