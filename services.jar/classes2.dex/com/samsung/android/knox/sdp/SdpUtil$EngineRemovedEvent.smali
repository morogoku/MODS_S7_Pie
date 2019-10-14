.class Lcom/samsung/android/knox/sdp/SdpUtil$EngineRemovedEvent;
.super Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;
.source "SdpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/sdp/SdpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EngineRemovedEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/sdp/SdpUtil;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/sdp/SdpUtil;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/knox/sdp/SdpUtil$EngineRemovedEvent;->this$0:Lcom/samsung/android/knox/sdp/SdpUtil;

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/sdp/SdpUtil$SdpEvent;-><init>(Lcom/samsung/android/knox/sdp/SdpUtil;I)V

    return-void
.end method
