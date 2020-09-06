.class public Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;
.super Ljava/lang/Object;
.source "ResourcesWrapper.java"


# instance fields
.field mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
