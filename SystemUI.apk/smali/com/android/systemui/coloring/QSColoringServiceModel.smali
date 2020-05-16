.class public Lcom/android/systemui/coloring/QSColoringServiceModel;
.super Ljava/lang/Object;
.source "QSColoringServiceModel.java"


# instance fields
.field public mNotificationColoringEnabled:Z

.field public mQSColoringAppVersion:I

.field public mQSColoringBlurAmount:F

.field public mQSColoringBlurEffectEnabled:Z

.field public mQSColoringDimAmount:F

.field public mQSColoringDimEffectEnabled:Z

.field public mQSColoringEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readAllResources(Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->isQSColoringEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/coloring/QSColoringServiceModel;->mQSColoringEnabled:Z

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->isQSColoringBlurEffectEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/coloring/QSColoringServiceModel;->mQSColoringBlurEffectEnabled:Z

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->isQSColoringDimEffectEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/coloring/QSColoringServiceModel;->mQSColoringDimEffectEnabled:Z

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->getQSColoringBlurEffectAmount()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/coloring/QSColoringServiceModel;->mQSColoringBlurAmount:F

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->getQSColoringDimEffectAmount()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/coloring/QSColoringServiceModel;->mQSColoringDimAmount:F

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/coloring/QSColoringServiceModel;->mQSColoringAppVersion:I

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->isNotificationColoringEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/coloring/QSColoringServiceModel;->mNotificationColoringEnabled:Z

    :cond_0
    return-void
.end method

.method public resetAllResources()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/coloring/QSColoringServiceModel;->mQSColoringEnabled:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/coloring/QSColoringServiceModel;->mQSColoringBlurEffectEnabled:Z

    iput-boolean v1, p0, Lcom/android/systemui/coloring/QSColoringServiceModel;->mQSColoringDimEffectEnabled:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/coloring/QSColoringServiceModel;->mQSColoringBlurAmount:F

    iput v1, p0, Lcom/android/systemui/coloring/QSColoringServiceModel;->mQSColoringDimAmount:F

    iput-boolean v0, p0, Lcom/android/systemui/coloring/QSColoringServiceModel;->mNotificationColoringEnabled:Z

    return-void
.end method
