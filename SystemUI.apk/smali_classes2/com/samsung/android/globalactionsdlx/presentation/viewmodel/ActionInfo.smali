.class public Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;
.super Ljava/lang/Object;
.source "ActionInfo.java"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mIconResId:I

.field private mLabel:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mStateLabel:Ljava/lang/String;

.field private mViewIndex:I

.field private mViewType:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->mName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->mIconResId:I

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;->CENTER_ICON_1P_VIEW:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    iput-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->mViewType:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->mLabel:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->mDescription:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->mViewIndex:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->mStateLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->mIconResId:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getStateLabel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->mStateLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getViewIndex()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->mViewIndex:I

    return v0
.end method

.method public getViewType()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->mViewType:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setIcon(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->mIconResId:I

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->mLabel:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method public setStateLabel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->mStateLabel:Ljava/lang/String;

    return-void
.end method

.method public setViewIndex(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->mViewIndex:I

    return-void
.end method

.method public setViewType(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->mViewType:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    return-void
.end method
