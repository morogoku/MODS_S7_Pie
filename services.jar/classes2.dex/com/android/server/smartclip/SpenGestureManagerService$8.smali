.class Lcom/android/server/smartclip/SpenGestureManagerService$8;
.super Ljava/lang/Object;
.source "SpenGestureManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;->notifyKeyboardClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$8;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$8;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->broastcastKeyboardClosed()V
    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3800(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    return-void
.end method