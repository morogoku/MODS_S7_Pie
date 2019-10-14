.class public interface abstract Lcom/samsung/systemui/splugins/aod/PluginAODServiceBoxCalendarManager;
.super Ljava/lang/Object;
.source "PluginAODServiceBoxCalendarManager.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/aod/PluginAODBaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/aod/PluginAODServiceBoxCalendarManager$Callback;
    }
.end annotation


# virtual methods
.method public abstract setCallback(Lcom/samsung/systemui/splugins/aod/PluginAODServiceBoxCalendarManager$Callback;)V
.end method

.method public abstract updateCalendarData(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
