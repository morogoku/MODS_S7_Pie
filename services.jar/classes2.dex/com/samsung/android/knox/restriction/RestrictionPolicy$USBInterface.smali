.class public final enum Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;
.super Ljava/lang/Enum;
.source "RestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/restriction/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "USBInterface"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum ABL:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum APP:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum AUD:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum CDC:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum COM:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum CON:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum CSC:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum HID:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum HUB:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum MAS:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum MIS:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum OFF:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum PER:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum PHY:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum PRI:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum STI:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum VEN:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum VID:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

.field public static final enum WIR:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;


# instance fields
.field private fullName:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 17

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "ABL"

    const-string v2, "ALL_BLOCK"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->ABL:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "APP"

    const-string v2, "USB_CLASS_APP_SPEC"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->APP:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "AUD"

    const-string v2, "USB_CLASS_AUDIO"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->AUD:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "CDC"

    const-string v2, "USB_CLASS_CDC_DATA"

    const/4 v6, 0x3

    const/4 v7, 0x4

    invoke-direct {v0, v1, v6, v2, v7}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->CDC:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "COM"

    const-string v2, "USB_CLASS_COMM"

    const/16 v8, 0x8

    invoke-direct {v0, v1, v7, v2, v8}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->COM:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "CON"

    const-string v2, "USB_CLASS_CONTENT_SEC"

    const/4 v9, 0x5

    const/16 v10, 0x10

    invoke-direct {v0, v1, v9, v2, v10}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->CON:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "CSC"

    const-string v2, "USB_CLASS_CSCID"

    const/4 v11, 0x6

    const/16 v12, 0x20

    invoke-direct {v0, v1, v11, v2, v12}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->CSC:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "HID"

    const-string v2, "USB_CLASS_HID"

    const/4 v12, 0x7

    const/16 v13, 0x40

    invoke-direct {v0, v1, v12, v2, v13}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->HID:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "HUB"

    const-string v2, "USB_CLASS_HUB"

    const/16 v13, 0x80

    invoke-direct {v0, v1, v8, v2, v13}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->HUB:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "MAS"

    const-string v2, "USB_CLASS_MASS_STORAGE"

    const/16 v13, 0x9

    const/16 v14, 0x100

    invoke-direct {v0, v1, v13, v2, v14}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->MAS:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "MIS"

    const-string v2, "USB_CLASS_MISC"

    const/16 v14, 0xa

    const/16 v15, 0x200

    invoke-direct {v0, v1, v14, v2, v15}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->MIS:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "PER"

    const-string v2, "USB_CLASS_PER_INTERFACE"

    const/16 v15, 0xb

    const/16 v14, 0x400

    invoke-direct {v0, v1, v15, v2, v14}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->PER:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "PHY"

    const-string v2, "USB_CLASS_PHYSICAL"

    const/16 v14, 0xc

    const/16 v15, 0x800

    invoke-direct {v0, v1, v14, v2, v15}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->PHY:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "PRI"

    const-string v2, "USB_CLASS_PRINTER"

    const/16 v15, 0xd

    const/16 v14, 0x1000

    invoke-direct {v0, v1, v15, v2, v14}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->PRI:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "STI"

    const-string v2, "USB_CLASS_STILL_IMAGE"

    const/16 v14, 0xe

    const/16 v15, 0x2000

    invoke-direct {v0, v1, v14, v2, v15}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->STI:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "VEN"

    const-string v2, "USB_CLASS_VENDOR_SPEC"

    const/16 v14, 0xf

    const/16 v15, 0x4000

    invoke-direct {v0, v1, v14, v2, v15}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->VEN:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "VID"

    const-string v2, "USB_CLASS_VIDEO"

    const v14, 0x8000

    invoke-direct {v0, v1, v10, v2, v14}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->VID:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "WIR"

    const-string v2, "USB_CLASS_WIRELESS_CONTROLLER"

    const/16 v14, 0x11

    const/high16 v15, 0x10000

    invoke-direct {v0, v1, v14, v2, v15}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->WIR:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const-string v1, "OFF"

    const-string v2, "ALL_OPEN"

    const/16 v14, 0x12

    const v15, 0x1ffff

    invoke-direct {v0, v1, v14, v2, v15}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->OFF:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->ABL:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->APP:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->AUD:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->CDC:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->COM:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->CON:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->CSC:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    aput-object v1, v0, v11

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->HID:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    aput-object v1, v0, v12

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->HUB:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->MAS:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->MIS:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->PER:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->PHY:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->PRI:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->STI:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->VEN:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->VID:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    aput-object v1, v0, v10

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->WIR:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->OFF:Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->$VALUES:[Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->fullName:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->value:I

    iput-object p3, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->fullName:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;
    .registers 2

    const-class v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;
    .registers 1

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->$VALUES:[Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    return-object v0
.end method


# virtual methods
.method public getFullName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->value:I

    return v0
.end method
