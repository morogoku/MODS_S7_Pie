.class public final synthetic Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$9-wlgO18folOHSZHYcGitX6LMJo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/MultiWindowManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/MultiWindowManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$9-wlgO18folOHSZHYcGitX6LMJo;->f$0:Lcom/android/server/am/MultiWindowManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$9-wlgO18folOHSZHYcGitX6LMJo;->f$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v0}, Lcom/android/server/am/MultiWindowManagerService;->lambda$onCoreStateChanged$3(Lcom/android/server/am/MultiWindowManagerService;)V

    return-void
.end method
