.class public Lcom/samsung/android/knox/restriction/SPDControlPolicy;
.super Ljava/lang/Object;
.source "SPDControlPolicy.java"


# static fields
.field public static final SPD_ENFORCE_NONE:I = 0x0

.field public static final SPD_ENFORCE_OFF:I = 0x2

.field public static final SPD_ENFORCE_ON:I = 0x1

.field public static final SPD_FAILED:I = -0x1

.field public static final SPD_OFF:I = 0x4

.field public static final SPD_ON:I = 0x3

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "SPDControlPolicy"

    sput-object v0, Lcom/samsung/android/knox/restriction/SPDControlPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoSecurityPolicyUpdateMode()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public setAutoSecurityPolicyUpdateMode(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
