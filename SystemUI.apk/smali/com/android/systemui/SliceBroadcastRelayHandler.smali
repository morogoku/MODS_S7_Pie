.class public Lcom/android/systemui/SliceBroadcastRelayHandler;
.super Lcom/android/systemui/SystemUI;
.source "SliceBroadcastRelayHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;
    }
.end annotation


# instance fields
.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRelays:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/Uri;",
            "Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SliceBroadcastRelayHandler;->mRelays:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/systemui/SliceBroadcastRelayHandler$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/SliceBroadcastRelayHandler$1;-><init>(Lcom/android/systemui/SliceBroadcastRelayHandler;)V

    iput-object v0, p0, Lcom/android/systemui/SliceBroadcastRelayHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method handleIntent(Landroid/content/Intent;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method
