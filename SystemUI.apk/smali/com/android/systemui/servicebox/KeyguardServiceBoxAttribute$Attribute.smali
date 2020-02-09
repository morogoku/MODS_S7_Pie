.class Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute$Attribute;
.super Ljava/lang/Object;
.source "KeyguardServiceBoxAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Attribute"
.end annotation


# instance fields
.field mMinTopMargin:[I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute$Attribute;->mMinTopMargin:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAttribute$Attribute;-><init>()V

    return-void
.end method
