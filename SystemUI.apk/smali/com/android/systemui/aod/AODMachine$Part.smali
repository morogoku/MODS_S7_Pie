.class public interface abstract Lcom/android/systemui/aod/AODMachine$Part;
.super Ljava/lang/Object;
.source "AODMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/aod/AODMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Part"
.end annotation


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public setAODParameter(Lcom/samsung/systemui/splugins/aod/PluginAODParameter;)V
    .locals 0

    return-void
.end method

.method public abstract transitionTo(Lcom/android/systemui/aod/AODMachine$AODState;Lcom/android/systemui/aod/AODMachine$AODState;)V
.end method
