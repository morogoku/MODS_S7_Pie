.class public Lcom/android/systemui/statusbar/phone/forceimmersive/GestureStyleStoreFactory;
.super Ljava/lang/Object;
.source "GestureStyleStoreFactory.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mKeyInjector:Lcom/android/systemui/statusbar/phone/util/KeyInjector;

.field private final mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/util/FeatureChecker;Lcom/android/systemui/statusbar/phone/util/KeyInjector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureStyleStoreFactory;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureStyleStoreFactory;->mKeyInjector:Lcom/android/systemui/statusbar/phone/util/KeyInjector;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureStyleStoreFactory;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    return-void
.end method


# virtual methods
.method public createDefaultGestureStyle()Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureStyleStoreFactory;->mRuneWrapper:Lcom/android/systemui/statusbar/phone/util/FeatureChecker;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/util/FeatureChecker;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/TabletKeyInjectionInfoStore;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureStyleStoreFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureStyleStoreFactory;->mKeyInjector:Lcom/android/systemui/statusbar/phone/util/KeyInjector;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/forceimmersive/TabletKeyInjectionInfoStore;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/util/KeyInjector;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureStyleStoreFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureStyleStoreFactory;->mKeyInjector:Lcom/android/systemui/statusbar/phone/util/KeyInjector;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/forceimmersive/KeyInjectionInfoStore;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/util/KeyInjector;)V

    return-object v0
.end method

.method public updateGestureStyleUtils(Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureStyleStoreFactory;->mKeyInjector:Lcom/android/systemui/statusbar/phone/util/KeyInjector;

    invoke-interface {p1, v0}, Lcom/samsung/systemui/splugins/navigationbar/GestureStyleInfoStore;->setKeyInjector(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectorBase;)V

    return-void
.end method
