.class public Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;
.super Ljava/lang/Object;
.source "PackageData.java"


# instance fields
.field private mPackageIcon:Landroid/graphics/drawable/Drawable;

.field private mPackageLabel:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPackageState:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackageIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;->mPackageIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPackageLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;->mPackageLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;->mPackageState:Z

    return v0
.end method

.method public setPackageIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;->mPackageIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setPackageLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;->mPackageLabel:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setPackageState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/domain/model/PackageData;->mPackageState:Z

    return-void
.end method
