.class public Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;
.super Ljava/lang/Object;
.source "SystemUIUtilFactory.java"

# interfaces
.implements Lcom/samsung/android/globalactions/util/UtilFactory;


# instance fields
.field mContext:Landroid/content/Context;

.field private mDefaultUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

.field private mProvider:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;Lcom/samsung/android/globalactions/util/UtilFactory;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mProvider:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mDefaultUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    invoke-virtual {v0, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    new-instance v2, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    iget-object v3, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    new-instance v2, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    iget-object v3, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    new-instance v2, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    iget-object v3, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    new-instance v2, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iget-object v3, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mDefaultUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v4, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/globalactions/util/CoverUtil;

    new-instance v2, Lcom/android/systemui/globalactions/util/CoverUtil;

    iget-object v3, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mDefaultUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {v4, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/globalactions/util/CoverUtil;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/globalactions/util/KioskModeWrapper;

    new-instance v2, Lcom/android/systemui/globalactions/util/KioskModeWrapper;

    iget-object v3, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/globalactions/util/KioskModeWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mProvider:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/globalactions/util/StatusBarWrapper;

    new-instance v2, Lcom/android/systemui/globalactions/util/StatusBarWrapper;

    iget-object v3, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/globalactions/util/StatusBarWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mProvider:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mProvider:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mDefaultUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    invoke-interface {v0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
