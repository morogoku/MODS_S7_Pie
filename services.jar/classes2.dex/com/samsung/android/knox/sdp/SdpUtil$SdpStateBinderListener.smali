.class Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;
.super Landroid/os/ISdpListener$Stub;
.source "SdpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/sdp/SdpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpStateBinderListener"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field mListener:Lcom/samsung/android/knox/sdp/SdpStateListener;

.field final synthetic this$0:Lcom/samsung/android/knox/sdp/SdpUtil;


# direct methods
.method private constructor <init>(Lcom/samsung/android/knox/sdp/SdpUtil;Lcom/samsung/android/knox/sdp/SdpStateListener;)V
    .registers 4

    iput-object p1, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->this$0:Lcom/samsung/android/knox/sdp/SdpUtil;

    invoke-direct {p0}, Landroid/os/ISdpListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mListener:Lcom/samsung/android/knox/sdp/SdpStateListener;

    new-instance v0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener$1;-><init>(Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;Lcom/samsung/android/knox/sdp/SdpUtil;)V

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/knox/sdp/SdpUtil;Lcom/samsung/android/knox/sdp/SdpStateListener;Lcom/samsung/android/knox/sdp/SdpUtil$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;-><init>(Lcom/samsung/android/knox/sdp/SdpUtil;Lcom/samsung/android/knox/sdp/SdpStateListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;)Lcom/samsung/android/knox/sdp/SdpStateListener;
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->getListener()Lcom/samsung/android/knox/sdp/SdpStateListener;

    move-result-object v0

    return-object v0
.end method

.method private getListener()Lcom/samsung/android/knox/sdp/SdpStateListener;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mListener:Lcom/samsung/android/knox/sdp/SdpStateListener;

    return-object v0
.end method


# virtual methods
.method public onEngineRemoved()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mListener:Lcom/samsung/android/knox/sdp/SdpStateListener;

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/SdpStateListener;->onEngineRemoved()V

    return-void
.end method

.method public onStateChange(I)V
    .registers 5

    new-instance v0, Lcom/samsung/android/knox/sdp/SdpUtil$StateChangeEvent;

    iget-object v1, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->this$0:Lcom/samsung/android/knox/sdp/SdpUtil;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/knox/sdp/SdpUtil$StateChangeEvent;-><init>(Lcom/samsung/android/knox/sdp/SdpUtil;I)V

    iget-object v1, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/SdpUtil$StateChangeEvent;->getMessage()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpStateBinderListener;->mListener:Lcom/samsung/android/knox/sdp/SdpStateListener;

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/sdp/SdpStateListener;->onStateChange(I)V

    return-void
.end method
