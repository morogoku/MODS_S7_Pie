.class public interface abstract Lcom/samsung/systemui/splugins/aod/PluginAODLiveClockManager;
.super Ljava/lang/Object;
.source "PluginAODLiveClockManager.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/aod/PluginAODBaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/aod/PluginAODLiveClockManager$Callback;
    }
.end annotation


# static fields
.field public static final TYPE_ANALOG:I = 0x1

.field public static final TYPE_DIGITAL:I = 0x2

.field public static final TYPE_ICON:I = 0x3


# virtual methods
.method public abstract setCallback(Lcom/samsung/systemui/splugins/aod/PluginAODLiveClockManager$Callback;)V
.end method
