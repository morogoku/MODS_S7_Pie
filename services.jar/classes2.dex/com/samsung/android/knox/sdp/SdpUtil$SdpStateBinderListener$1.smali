.class Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener$1;
.super Landroid/os/Handler;
.source "SdpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;-><init>(Lcom/samsung/android/knox/sdp/SdpUtil;Lcom/samsung/android/knox/sdp/SdpStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;

.field final synthetic val$this$0:Lcom/samsung/android/knox/sdp/SdpUtil;


# direct methods
.method constructor <init>(Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;Lcom/samsung/android/knox/sdp/SdpUtil;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener$1;->this$1:Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;

    iput-object p2, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener$1;->val$this$0:Lcom/samsung/android/knox/sdp/SdpUtil;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/sdp/SdpUtil$StateChangeEvent;

    iget-object v2, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener$1;->this$1:Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;

    iget-object v2, v2, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mListener:Lcom/samsung/android/knox/sdp/SdpStateListener;

    iget v3, v1, Lcom/samsung/android/knox/sdp/SdpUtil$StateChangeEvent;->state:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/sdp/SdpStateListener;->onStateChange(I)V

    goto :goto_3b

    :cond_16
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_23

    iget-object v1, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener$1;->this$1:Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;

    iget-object v1, v1, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mListener:Lcom/samsung/android/knox/sdp/SdpStateListener;

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/SdpStateListener;->onEngineRemoved()V

    goto :goto_3b

    :cond_23
    const-string v1, "SdpUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b
    return-void
.end method
