.class public final synthetic Lcom/android/server/usb/-$$Lambda$UsbMirrorLinkManager$LSRDSgzA34I8NC4MRB4o-Bxriiw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/usb/UsbMirrorLinkManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/UsbMirrorLinkManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/-$$Lambda$UsbMirrorLinkManager$LSRDSgzA34I8NC4MRB4o-Bxriiw;->f$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/-$$Lambda$UsbMirrorLinkManager$LSRDSgzA34I8NC4MRB4o-Bxriiw;->f$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbMirrorLinkManager;->lambda$systemReady$0(Lcom/android/server/usb/UsbMirrorLinkManager;)V

    return-void
.end method
