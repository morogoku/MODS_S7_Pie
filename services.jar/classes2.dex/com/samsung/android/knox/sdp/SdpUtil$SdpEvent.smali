.class Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;
.super Ljava/lang/Object;
.source "SdpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/sdp/SdpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpEvent"
.end annotation


# static fields
.field static final ON_ENGINE_REMOVED:I = 0x2

.field static final ON_STATE_CHANGED:I = 0x1


# instance fields
.field private mMessage:Landroid/os/Message;

.field final synthetic this$0:Lcom/samsung/android/knox/sdp/SdpUtil;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/sdp/SdpUtil;I)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;->this$0:Lcom/samsung/android/knox/sdp/SdpUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;->mMessage:Landroid/os/Message;

    iget-object p1, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;->mMessage:Landroid/os/Message;

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;->mMessage:Landroid/os/Message;

    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getMessage()Landroid/os/Message;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;->mMessage:Landroid/os/Message;

    return-object v0
.end method
