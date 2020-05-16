.class public interface abstract Lcom/samsung/systemui/splugins/clockpack/PluginClockPack;
.super Ljava/lang/Object;
.source "PluginClockPack.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.action.PLUGIN_CLOCK_PACK"
    version = 0x1
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.action.PLUGIN_CLOCK_PACK"

.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract onDreamingStarted(Landroid/view/ViewGroup;)V
.end method

.method public abstract onDreamingStopped()V
.end method

.method public abstract sendExtraData(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract setAODPluginCallback(Lcom/samsung/systemui/splugins/aod/PluginAOD$Callback;)V
.end method
